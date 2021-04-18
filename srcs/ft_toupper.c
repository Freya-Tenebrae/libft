/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_toupper.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cmaginot <cmaginot@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/14 23:20:24 by cmaginot          #+#    #+#             */
/*   Updated: 2021/04/17 16:59:37 by cmaginot         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/ft_libft.h"

int	ft_toupper(int c)
{
	if (ft_islower(c) == 1)
		return (c - 'a' + 'A');
	return (c);
}