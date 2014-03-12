/*
** xsys.h for xsys in /home/leprov_a//depot/42sh/src/config/lib
** 
** Made by alexis leprovost
** Login   <leprov_a@epitech.net>
** 
** Started on  Sun Apr 15 20:54:53 2012 alexis leprovost
** Last update Sat May 19 10:52:57 2012 alexis leprovost
*/

#ifndef __XSYS_H__
#define __XSYS_H__

#include	<stdio.h>
#include	<stdlib.h>
#include	<sys/types.h>
#include	<sys/stat.h>
#include	<fcntl.h>
#include	<errno.h>
#include	<strings.h>
#include	<time.h>

typedef enum e_print
{
  NO,
  YES
} t_print;

int	xopen(const char *, int, int, t_print);
void	*xmalloc(size_t);
char	*xtime(void);

#endif