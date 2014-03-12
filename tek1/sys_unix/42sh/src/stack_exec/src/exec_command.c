/*
** exec_command.c for stack_exec in /home/guiho_r/tek1/42sh/src/stack_exec/src
**
** Made by ronan guiho
** Login   <guiho_r@epitech.net>
**
** Started on  Thu Apr 12 11:21:53 2012 ronan guiho
** Last update Fri Nov  2 18:39:51 2012 kevin platel
*/

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <dirent.h>
#include <sys/stat.h>
#include <sys/types.h>

#include "sh.h"
#include "my.h"
#include "env.h"
#include "tree.h"
#include "token.h"
#include "execute.h"

char		*exec_command_pathvar(char *cmd, t_env *env, int i)
{
  struct stat   st;
  char		*path;
  char		*tmp;
  char		**tab_path;

  if ((tab_path = exec_create_tabvar_env(env, "PATH", ":")) == NULL)
    {
      fprintf(stderr, "%s: Command not found.\n", cmd);
      return (NULL);
    }
  while (tab_path[++i])
    {
      if ((path = my_strconcat("/", cmd)) == NULL)
	return (NULL);
      tmp = path;
      if ((path = my_strconcat(tab_path[i], path)) == NULL)
	return (NULL);
      free(tmp);
      if ((lstat(path, &st)) != -1)
	return (my_strconcat(tab_path[i], "/"));
      free(path);
    }
  if ((path = exec_command_pathvar_none(tab_path)) == NULL)
    return (NULL);
  return (path);
}

static int		exec_command_check(char *cmd)
{
  struct stat   st;

  if ((access(cmd, F_OK)) == -1 || (exec_check_slash(cmd) == FALSE))
    {
      fprintf(stderr, "%s: Command not found.\n", cmd);
      return (EXIT_FAILURE);
    }
  if ((stat(cmd, &st)) == -1)
    return (EXIT_FAILURE);
  else
    {
      if ((access(cmd, X_OK)) == -1 || S_ISDIR(st.st_mode))
	{
	  fprintf(stderr, "%s: Permission denied.\n", cmd);
	  return (EXIT_FAILURE);
	}
    }
  return (EXIT_SUCCESS);
}

int		exec_commmand_exec(char **tab_environ, char **tab_command, \
				   char *path, t_global *glob)
{
  char		*tmp;

  tmp = path;
  if ((path = my_strconcat(path, tab_command[0])) == NULL)
    {
      my_free_tab(tab_environ);
      my_free_tab(tab_command);
      return (EXIT_FAILURE);
    }
 free(tmp);
  if ((exec_command_check(path)) == EXIT_FAILURE)
    {
      my_free_tab(tab_environ);
      my_free_tab(tab_command);
      glob->exit = EXIT_FAILURE;
      return (EXIT_CHILD);
    }
  if ((execve(path, tab_command, tab_environ)) == -1)
    {
      glob->exit = EXIT_FAILURE;
      return (EXIT_FAILURE);
    }
  return (EXIT_SUCCESS);
}

int		exec_command_end(char **tab_command, char **tab_environ, \
				 char *path, t_global *glob)
{
  int		r;

  if ((exec_check_slash(tab_command[0])) == FALSE)
    {
      free(path);
      if ((path = exec_command_pathvar(tab_command[0], glob->env, -1)) == NULL)
	{
	  glob->exit = EXIT_FAILURE;
	  free(path);
	  my_free_tab(tab_environ);
	  my_free_tab(tab_command);
	  return (EXIT_CHILD);
	}
    }
  if ((r = exec_commmand_exec(tab_environ, tab_command, path, glob))
      >= EXIT_FAILURE)
    return (r);
  return (EXIT_SUCCESS);
}

int		exec_command(t_node *master_node, t_env *env, \
			     t_global *global)
{
  int		r;
  char		*path;
  char		**tab_command;
  char		**tab_environ;

  path = my_strdup("");
  if ((tab_command = exec_convert(master_node, global)) == NULL)
    return (EXIT_FAILURE);
  if ((tab_environ = export_env(env)) == NULL)
    {
      my_free_tab(tab_command);
      return (EXIT_CHILD);
    }
  if ((r = exec_command_end(tab_command, tab_environ, \
			    path, global)) >= EXIT_FAILURE)
    return (r);
  return (EXIT_SUCCESS);
}