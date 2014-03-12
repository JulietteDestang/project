/*
** my_libX.h for my_libX in /home/platel_k/projet/minilibX/tp1/tp1_window_empty
**
** Made by kevin platel
** Login   <platel_k@epitech.net>
**
** Started on  Wed Nov 23 15:10:53 2011 kevin platel
** Last update Sat Jan  7 13:12:30 2012 kevin platel
*/

#ifndef __MY_LIBX__
#define __MY_LIBX__

#include "point.h"

#define HEIGHT	(600)
#define WIDTH	(600)

void		line(t_my_ptr *my_ptr, t_point *point, t_point *point2);
t_my_ptr	*init_my_ptr(void *mlx_ptr, void *win_ptr);
t_point		*init_point(int x, int y, int color);
t_imag		*init_img(void *mlx_ptr, int width, int height);
void		mlx_ppti(void *mlx_ptr, t_imag *img, t_point *pixel);
void	img_line(void *mlx_ptr, t_imag *img, t_point *point, t_point *point2);
t_imag	 *init_xpm(void *mlx_ptr, char *link);
void	draw_line_vec(void *mlx_ptr, t_imag *img, t_point *point, t_point *point2);

#endif