#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gemartin <gemartin@student.42barc...>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/02/04 18:34:31 by gemartin          #+#    #+#              #

#                                                                              #
#******************************************************************************#

NAME	= libftprintf.a
FLAGS	= -Wall -Werror -Wextra
SRC 	= ft_hexa_mayus.c\
ft_hexa_min.c\
ft_num_nosign.c\
ft_printf.c\
ft_putchar.c\
ft_punt_hexa.c\
ft_putnbr.c\
ft_putstr.c\
ft_strlen.c\

OBJ_DIR	= obj
OBJECTS	= $(addprefix $(OBJ_DIR)/, $(SRC:.c=.o))

INCLUDE	= ft_printf.h

all : $(NAME)

$(NAME) : $(OBJECTS)
	ar rcs $(NAME) $(OBJECTS)

$(OBJ_DIR)/%.o : %.c $(INCLUDE) | $(OBJ_DIR)
	gcc $(FLAGS) -c $< -o $@

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

clean:
	rm -rf $(OBJ_DIR)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all re fclean clean