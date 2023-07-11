# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ltalia <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/27 16:36:22 by ltalia            #+#    #+#              #
#    Updated: 2022/06/27 16:36:27 by ltalia           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=
CLIENT	=	client
SERVER	=	server

SRC_C		=	client.c
SRC_S		=	server.c
SRC_L		=	libft/ft_atoi.c \
			libft/ft_putchar_fd.c \
			libft/ft_putnbr_fd.c \
			libft/ft_putstr_fd.c \
			libft/ft_straddc.c \
			libft/ft_strlen.c \
			libft/ft_bzero.c \
			libft/ft_calloc.c \
			libft/ft_memcpy.c \
			libft/ft_memset.c \
			libft/ft_strdup.c 

INC		=	-I.

CC			=	gcc
CFLAG			=	-Wall -Wextra -Werror
RM			=	rm -f

all: $(SERVER) $(CLIENT)

$(NAME): all

$(SERVER): 
	@ $(CC) $(CFLAG) $(SRC_L) $(SRC_S) $(INC) -o $(SERVER)

$(CLIENT): 
	@ $(CC) $(CFLAG) $(SRC_L) $(SRC_C) $(INC) -o $(CLIENT)

clean:
	@ $(RM) $(CLIENT) $(SERVER)

fclean: clean

re: fclean all


.PHONY: all clean fclean re
