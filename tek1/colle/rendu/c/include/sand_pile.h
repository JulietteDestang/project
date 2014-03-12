/*
** sand_pile.h for colle in /home/vink/projet/colle/src
** 
** Made by kevin platel
** Login   <platel_k@epitech.net>
** 
** Started on  Thu Apr 26 22:51:51 2012 kevin platel
** Last update Thu Apr 26 23:54:23 2012 kevin platel
*/

#ifndef	__SAND_PILE_H__
#define __SAND_PILE_H__

#define	BUFFER_SIZE	(42)

char	analyse_sand_pile(char **map, char *str, int i, int j);
int	sand_pile(char **map, char *sand, int it);
int	run_simulation(char **map, char *sand);

#endif