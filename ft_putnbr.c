/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printchar.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vboluda- <vboluda-@student.42malaga.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/18 22:06:39 by vboluda-          #+#    #+#             */
/*   Updated: 2024/01/24 13:06:12 by vboluda-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

static int	int_min(int n)
{
	(void)n;
	if (write(1, "-2147483648", 11) != 11)
		return (-1);
	return (11);
}

int	ft_putnbr(long int n)
{
	int	let;

	let = 0;
	if (n == -2147483648)
		return (int_min(n));
	if (n < 0 && ++let)
	{
		if (write(1, "-", 1) != 1)
			return (-1);
		n = -n;
	}
	if (n > 9)
	{
		let += ft_putnbr(n / 10);
		if (let == -1)
			return (-1);
		n = n % 10;
	}
	if (n <= 9)
	{
		if (ft_putchar (('0' + n)) == -1)
			return (-1);
		let++;
	}
	return (let);
}
