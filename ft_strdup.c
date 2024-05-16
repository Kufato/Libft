/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kufato <kufato@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/09/29 17:38:26 by axcallet          #+#    #+#             */
/*   Updated: 2024/05/16 13:59:47 by kufato           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strdup(const char *s)
{
	char	*dest;
	int		size;
	int		i;

	i = 0;
	size = ft_strlen(s);
	dest = ft_calloc(sizeof(char), size + 1);
	if (!dest)
		return (NULL);
	while (i < size)
	{
		dest[i] = s[i];
		i++;
	}
	return (dest);
}
