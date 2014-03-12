/*
** termcap_canon.c for 42sh in /home/leprov_a//depot/42sh/src/edit/src
** 
** Made by alexis leprovost
** Login   <leprov_a@epitech.net>
** 
** Started on  Mon Apr 23 11:45:12 2012 alexis leprovost
** Last update Fri Apr 27 14:12:18 2012 alexis leprovost
*/

#include	<termios.h>
#include	<stdlib.h>

#include	"edit.h"

int	termcap_raw(struct termios *t, int flag)
{
  if (!flag)
    {
      t->c_lflag &= ~ICANON;
      t->c_cc[VMIN] = 1;
      t->c_cc[VTIME] = 0;
    }
  else
    t->c_lflag |= ICANON;
  if (tcsetattr(0, TCSANOW, t) == -1)
    return (EXIT_FAILURE);
  return (EXIT_SUCCESS);
}

int	termcap_echo(struct termios *t, int flag)
{
  if (!flag)
    t->c_lflag &= ~ECHO;
  else
    t->c_lflag |= ECHO;
  if (tcsetattr(0, TCSANOW, t) == -1)
    return (EXIT_FAILURE);
  return (EXIT_SUCCESS);
}