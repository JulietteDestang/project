/*
** my_putchar.c for pi in /home/leprov_a//depot/colle10/lib
** 
** Made by alexis leprovost
** Login   <leprov_a@epitech.net>
** 
** Started on  Thu Apr 19 14:27:31 2012 alexis leprovost
** Last update Thu Apr 19 14:29:23 2012 alexis leprovost
*/

#include	<unistd.h>

void	my_putchar(char c)
{
  write(1, &c, 1);
}


