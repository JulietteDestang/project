/*
** parser_return_start.c for lemin in /home/guiho_r/tek1/lemin/src/parser
** 
** Made by ronan guiho
** Login   <guiho_r@epitech.net>
** 
** Started on  Thu Apr  5 14:00:04 2012 ronan guiho
** Last update Fri Apr  6 17:16:38 2012 alexis leprovost
*/

#include <stdlib.h>

#include "hex.h"

t_room		*parser_return_start_end(t_room *list, int flag)
{
  t_room	*tmp;

  tmp = list;
  if (flag == START)
    while (tmp->status != START)
      tmp = tmp->next;
  else if (flag == END)
    while (tmp->status != END)
      tmp = tmp->next;
  return (tmp);
}