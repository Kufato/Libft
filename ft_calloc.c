/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_calloc.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kufato <kufato@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/09/29 13:26:30 by axcallet          #+#    #+#             */
/*   Updated: 2024/05/16 14:43:02 by kufato           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_calloc(size_t nmemb, size_t size)
{
	void	*ptr;
	size_t	nb;

	nb = nmemb * size;
	if (nmemb == 0 || size == 0)
		return (malloc(0));
	ptr = malloc(nb);
	if (!ptr)
		return (NULL);
	ft_bzero(ptr, nb);
	return (ptr);
}
