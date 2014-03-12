/*
** import_bmp.c for Import BMP in /home/guiho_r/tek1/rtv1/src
** 
** Made by ronan guiho
** Login   <guiho_r@epitech.net>
** 
** Started on  Sat Mar 31 23:56:26 2012 ronan guiho
** Last update Fri May 25 00:19:17 2012 ronan guiho
*/

#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <sys/types.h>

#include "image.h"
#include "mlx.h"
#include "my.h"
#include "header.h"

t_image		*import_imagebmp(void *mlx_ptr, int x, int y)
{
  t_image	*image;

  if ((image = malloc(sizeof(*image))) == NULL)
    {
      my_puterror("[*] Raytracer: Could not alloc.\n");
      return (NULL);
    }
  if ((image->ptr = mlx_new_image(mlx_ptr, x, y)) == NULL)
    {
      my_puterror("[*] Raytracer: Could not create image.\n");
      return (NULL);
    }
  image->data = mlx_get_data_addr(image->ptr, &image->bpp,
				  &image->sizeline, &image->endian);
  image->size[WIDTH] = x;
  image->size[HEIGHT] = y;
  return (image);
}
int		import_openbmp(char *name)
{
  int		fd;

  if ((fd = open(name, O_RDONLY)) == -1)
    return (-1);
  return (fd);
}

t_image		*import_bmp(void *mlx_ptr, char *path)
{
  int		x;
  int		y;
  int		i;
  int		fd;
  t_image	*img;
  int		size[2];
  char		buffer[1024];

  if ((fd = import_openbmp(path)) == -1)
    return (NULL);
  read(fd, buffer, 18);
  read(fd, &size[WIDTH], 4);
  read(fd, &size[HEIGHT], 4);
  read(fd, buffer, 28);
  if ((img = import_imagebmp(mlx_ptr, size[WIDTH], size[HEIGHT])) == NULL)
    return (NULL);
  y = size[HEIGHT] + 1;
  while (--y > 0)
    {
      x = -1;
      while (++x < size[WIDTH])
	{
	  i = (y * img->sizeline) + (x * (img->bpp / 8));
	  read(fd, buffer, 4);
	  img->data[i] = buffer[0];
	  img->data[i + 1] = buffer[1];
	  img->data[i + 2] = buffer[2];
	}
    }
  return (img);
}