/*
** init_tab_fun.c for init_tab_func in /home/platel_k/projet/my_printf/source
**
** Made by kevin platel
** Login   <platel_k@epitech.net>
**
** Started on  Sat Nov 12 08:46:56 2011 kevin platel
** Last update Sat Nov 19 17:53:54 2011 kevin platel
*/

#include <stdarg.h>
#include <stdlib.h>
#include "my.h"
#include "printf.h"

int		init_tab_func()
{
  int		(*(*tab))(va_list *, const char *);

  tab = malloc(10 * sizeof(*tab));

  tab[0] = &opt_d;
  tab[1] = &opt_s;
  tab[2] = &opt_c;
  tab[3] = &opt_x;
  tab[4] = &opt_X;
  tab[5] = &opt_o;
  tab[6] = &opt_u;
  tab[7] = &opt_b;
  tab[8] = &opt_S;
  tab[9] = &opt_p;

  return (tab);
}