/*
** my.h for 42sh in /home/leprov_a//depot/42sh/src/config/lib
** 
** Made by alexis leprovost
** Login   <leprov_a@epitech.net>
** 
** Started on  Mon Apr 16 01:00:35 2012 alexis leprovost
** Last update Tue May 29 19:55:50 2012 zoe phalippou
*/

#ifndef __MY_H__
#define __MY_H__

#include	<stdlib.h>

#define	NUMBER_STRING	"+-0123456789"
#define	ALPHA_STRING	"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
#define	DELIM_NUMBER	",."

int	is_number(char *);
double	my_sqrt(double);
void	my_free_tab(char **);
void	my_putchar(char);
void	my_putnbr(int);
int	my_putstr(char *);
int	my_strlen(char *);
int	my_tablen(char **);
int	my_strcmp(char *, char *);
int	my_strncmp(char *, char *, int);
int	check_base(char, char *);
int	my_getnbr(char *);
int	my_getnbr_base(char *, char *);
int	is_a_number(char *);
int	is_a_singlestr(char, char *);
int	my_clstr(char *, int);
int	my_puterror(char *);
int	my_power_rec(int, int);
int	my_strstr(char *, char *);
double	my_getdouble(char *);
char	*my_strdup(char *);
char	*my_strndup(char *, int);
char	*my_strconcat(char *, char *);
char	*my_strcat(char *, char *);
char	*my_strmcat(char *, char *);
char	*my_strcpy(char *, char *);
char	*epur_str(char *);
void	*xmalloc(size_t);

#endif