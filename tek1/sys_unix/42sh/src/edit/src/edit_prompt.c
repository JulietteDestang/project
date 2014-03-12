/*
** edit_prompt.c for 42sh in /home/leprov_a//depot/42sh/src/edit/src
** 
** Made by alexis leprovost
** Login   <leprov_a@epitech.net>
** 
** Started on  Mon Apr 16 17:42:41 2012 alexis leprovost
** Last update Sat May 19 20:25:11 2012 alexis leprovost
*/

#include	<stdlib.h>
#include	<string.h>
#include	<unistd.h>

#include	"edit.h"
#include	"xsys.h"
#include	"my.h"

static int	custom_prompt(char *str, char c, int i, t_env *env)
{
  char	*custom;

  if (c == 't')
    custom = xtime();
  else if (c == 'm')
    custom = my_strdup(find_in_env(HOSTNAME_STRING, env));
  else if (c == 'u')
    custom = my_strdup(find_in_env(USERNAME_STRING, env));
  else if (c == '~')
    custom = my_strdup(find_in_env(PWD_STRING, env));
  else
    {
      str[i] = c;
      return (++i);
    }
  str = my_strcat(str, custom);
  i += my_strlen(custom);
  (custom) ? free(custom) : (custom = NULL);
  return (i);
}

static char	*default_prompt(t_env *env)
{
  char	*hostname;
  char	*username;
  char	*pwd;
  char	*prompt;
  int	len;

  hostname = my_strdup(find_in_env(HOSTNAME_STRING, env));
  username = my_strdup(find_in_env(USERNAME_STRING, env));
  pwd = getcwd(NULL, 0);
  len = my_strlen(hostname) + my_strlen(username) + my_strlen(pwd) + 7;
  if ((prompt = xmalloc(sizeof(*prompt) * len)) == NULL)
    return (my_strdup(DEFAULT_PROMPT_STRING));
  if (hostname == NULL || username == NULL || pwd == NULL)
    {
      free(prompt);
      return (my_strdup(DEFAULT_PROMPT_STRING));
    }
  sprintf(prompt, "[%s@%s %s]$ ", username, hostname, pwd);
  (hostname) ? free(hostname) : (hostname = NULL);
  (username) ? free(username) : (username = NULL);
  (pwd) ? free(pwd) : (pwd = NULL);
  return (prompt);
}

char	*edit_prompt(t_config *config, t_env *env)
{
  char	*prompt;
  int	i;
  int	k;

  if ((prompt = xmalloc(sizeof(*prompt) * MAX_PROMPT_LENGTH)) == NULL)
    return (NULL);
  i = -1;
  k = 0;
  if (!config || !config->prompt)
    prompt = default_prompt(env);
  else
    while (config->prompt[++i])
      {
	if (config->prompt[i] == CUSTOM_CHAR && config->prompt[i + 1] != '\0')
	  k = custom_prompt(prompt, config->prompt[++i], k, env);
	else
	  prompt[k++] = config->prompt[i];
      }
  return (prompt);
}