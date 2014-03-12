/*
** display_image.c for raytracer in /home/leprov_a//depot/rt/src
** 
** Made by alexis leprovost
** Login   <leprov_a@epitech.net>
** 
** Started on  Wed May  2 13:44:50 2012 alexis leprovost
** Last update Mon May 28 06:00:57 2012 kevin platel
*/

#include	<stdio.h>
#include	<stdlib.h>
#include	<pthread.h>
#include	<sys/time.h>

#include	"parse.h"
#include	"raytracer.h"
#include        "export.h"
#include        "thread.h"
#include	"global.h"
#include	"color.h"
#include	"event.h"
#include	"utils.h"
#include	"calc.h"
#include	"init.h"
#include	"free.h"
#include	"mlx.h"
#include	"my.h"

t_global	*global_thread;
pthread_mutex_t mutex;

int		aliasing(t_thread *thread, double x, double y, \
			  double aliasing)
{
  double	ymax;
  double	xdom[2];

  ymax = y + aliasing;
  xdom[MAX] = x + aliasing;
  pthread_mutex_lock(&mutex);
  if (calc_management(global_thread, &thread->color, x, y))
      return (EXIT_FAILURE);
  pthread_mutex_unlock(&mutex);
  while ((y < ymax) && (y < thread->size[HEIGHT]))
    {
      xdom[MIN] = x;
      while ((xdom[MIN] < xdom[MAX]) && (xdom[MIN] < \
					 thread->size[WIDTH]))
	{
	  if (thread->mode == TYPE_NORMAL)
	    if (mlx_ppti(thread->thread_image, &thread->color, xdom[MIN], y))
	      return (EXIT_FAILURE);
	  xdom[MIN] += 1.000;
	}
      y += 1.000;
    }
  return (EXIT_SUCCESS);
}

int		antialiasing(t_thread *thread, double x, double y, \
			      double antialiasing)
{
  t_color	color;
  double	ydom[2];
  double	xdom[2];
  double	ref_antialiasing;

  ydom[MAX] = y + 0.5F;
  xdom[MAX] = x + 0.5F;
  ydom[MIN] = y - 1.0F;
  restat_color(&thread->color);
  ref_antialiasing = antialiasing;
  while ((ydom[MIN] += ECHANTILLON) < ydom[MAX])
    {
      xdom[MIN] = x - 1.0F;
      while ((xdom[MIN] += ECHANTILLON) < xdom[MAX])
	{
	  while ((--antialiasing + 1) > 0)
	    {
	      pthread_mutex_lock(&mutex);
	      calc_management(global_thread, &color, RL(xdom[MIN]), RL(ydom[MIN]));
	      pthread_mutex_unlock(&mutex);
	      add_color(&thread->color, &color);
	    }
	  antialiasing = ref_antialiasing;
	}
    }
  thread->color.red /= (NROOKS * antialiasing);
  thread->color.green /= (NROOKS * antialiasing);
  thread->color.blue /= (NROOKS * antialiasing);
  if (thread->mode == TYPE_NORMAL)
    mlx_ppti(thread->thread_image, &thread->color, x, y);
  return (EXIT_SUCCESS);
}

t_color		*display_image_pixel(t_thread *thread, double x, double y, int flag)
{
  if (thread->antialiasing > 0.0F)
    antialiasing(thread, x, y, thread->antialiasing);
  else
    aliasing(thread, x, y, flag);
  return (&thread->color);
}

void		*display_image_thread(void *arg)
{
  double	x;
  double	y;
  double	flag;
  t_thread	*thread;
  t_normal_info	*normal_info;

  thread = (t_thread *)arg;
  normal_info = NULL;
  if (thread->mode == TYPE_NORMAL)
    normal_info = (t_normal_info *)global_thread->info.arg;
  flag = thread->antialiasing;
  flag = (flag < 0.000) ? (flag * (-1.000)) : (1.000);
  y = thread->thread_atribution[Y_MIN];
  while (y < thread->thread_atribution[Y_MAX])
    {
      x = thread->thread_atribution[X_MIN];
      while (x < thread->thread_atribution[X_MAX])
	{
	  display_image_pixel(thread, x, y, flag);
	  x += flag;
	}
      if (thread->mode == TYPE_NORMAL && normal_info->mute == 0)
	if (thread->thread_atribution[DISPLAY] == ON)
	event_expose(global_thread);
      y += flag;
    }
  if (thread->thread_atribution[DISPLAY] != ON)
    pthread_exit(EXIT_SUCCESS);
  return (NULL);
}

static int	display_image_atribution(t_global *global)
{
  int		i;
  int		value;
  int		atribution[2];

  i = 0;
  value = 0;
  pthread_mutex_init(&mutex, NULL);
  atribution[0] = global->window->x_win / THREAD_COUNT;
  atribution[1] = global->window->x_win % THREAD_COUNT;
  while (i < THREAD_COUNT)
    {
      global->thread[i].mode = TYPE_NORMAL;
      global->thread[i].antialiasing = global_thread->scene->antialiasing;
      global->thread[i].size[WIDTH] = global_thread->window->x_win;
      global->thread[i].size[HEIGHT] = global_thread->window->y_win;
      global->thread[i].thread_atribution[ID] = i;
      global->thread[i].thread_atribution[DISPLAY] = OFF;
      global->thread[i].thread_atribution[X_MIN] = value;
      global->thread[i].thread_atribution[X_MAX] = value + atribution[0];
      global->thread[i].thread_atribution[Y_MIN] = 0;
      global->thread[i].thread_atribution[Y_MAX] = global->window->y_win;
      global->thread[i].thread_image = init_image(global->window->mlx_ptr, NULL, \
						  global->thread[i].thread_atribution[X_MAX] - \
						  global->thread[i].thread_atribution[X_MIN], \
						  global->thread[i].thread_atribution[Y_MAX]);
      value = value + atribution[0];
      if (i < (THREAD_COUNT - 1))
	if ((pthread_create(&global->thread[i].thread_p, NULL, \
			    display_image_thread, &global->thread[i])) < 0)
	  return (EXIT_FAILURE);
      i++;
    }
  global->thread[i - 1].thread_atribution[X_MAX] = value + atribution[1];
  global->thread[i - 1].thread_atribution[DISPLAY] = ON;
  display_image_thread(&global->thread[i - 1]);
  return (EXIT_SUCCESS);
}

int		display_image(t_global *global)
{
  int		i;
  t_normal_info	*normal_info;

  i = -1;
  normal_info = NULL;
  if (global->info.type == TYPE_NORMAL)
      normal_info = (t_normal_info *)global->info.arg;
  global->info.nbr_thread = (global->info.nbr_thread > MAX_THREAD || \
			     global->info.nbr_thread > global->window->x_win) \
    ? 1 : global->info.nbr_thread;
  display_image_atribution(global);
  while (++i < (global->info.nbr_thread - 1))
    pthread_join(global->thread[i].thread_p, NULL);
  if (global->info.type == TYPE_NORMAL && normal_info->mute == 0)
    event_expose(global);
  if (global->info.type == TYPE_NORMAL)
    {
      if (normal_info && normal_info->exp != NULL)
	export_bmp(global, normal_info->exp);
    }
  return (EXIT_SUCCESS);
}