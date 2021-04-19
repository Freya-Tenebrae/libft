# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cmaginot <cmaginot@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/14 23:11:43 by cmaginot          #+#    #+#              #
#    Updated: 2021/04/19 16:08:11 by cmaginot         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

TARGET=libft.a
SRC=ft_memset.c \
	ft_bzero.c \
	ft_memcpy.c \
	ft_memccpy.c \
	ft_memmove.c \
	ft_memchr.c \
	ft_memcmp.c \
	ft_strlen.c \
	ft_isalpha.c \
	ft_isdigit.c \
	ft_isalnum.c \
	ft_isascii.c \
	ft_isprint.c \
	ft_toupper.c \
	ft_tolower.c \
	ft_strchr.c \
	ft_strrchr.c \
	ft_strncmp.c \
	ft_strlcpy.c \
	ft_strlcat.c \
	ft_strnstr.c \
	ft_atoi.c \
	ft_calloc.c \
	ft_strdup.c \
	ft_substr.c \
	ft_strjoin.c \
	ft_strtrim.c \
	ft_split.c \
	ft_itoa.c \
	ft_strmapi.c \
	ft_putchar_fd.c \
	ft_putstr_fd.c \
	ft_putendl_fd.c \
	ft_putnbr_fd.c
SRC_BONUS=ft_swap_bonus.c \
	ft_isnumber_bonus.c \
	ft_isupper_bonus.c \
	ft_islower_bonus.c \
	ft_isblank_bonus.c \
	ft_isspace_bonus.c \
	ft_strcmp_bonus.c \
	ft_strncpy_bonus.c \
	ft_strcpy_bonus.c \
	ft_strncat_bonus.c \
	ft_strcat_bonus.c \
	ft_strstr_bonus.c \
	ft_strndup_bonus.c \
	ft_putchar_bonus.c \
	ft_putstr_bonus.c \
	ft_putendl_bonus.c \
	ft_putnbr_bonus.c \
	ft_atof_bonus.c \
	ft_strtrimc_bonus.c \
	ft_strnequ_bonus.c \
	ft_strequ_bonus.c \
	ft_strmap_bonus.c \
	ft_striteri_bonus.c \
	ft_striter_bonus.c \
	ft_strclr_bonus.c \
	ft_strdel_bonus.c \
	ft_strnew_bonus.c \
	ft_memdel_bonus.c \
	ft_memalloc_bonus.c
OBJS=${SRC:.c=.o}
OBJS_BONUS=${SRC_BONUS:.c=.o}

HEADER=includes
FOLDER=srcs

CC=gcc
CFLAGS=-Wall -Wextra -Werror
RM=rm -f

all: ${TARGET}

${TARGET}: ${OBJS}
	ar -rcs ${TARGET} ${OBJS}

%.o: %.c
	${CC} -c ${CFLAGS} -o $@ $< -I ${HEADER}

bonus: ${OBJS} ${OBJS_BONUS}
	ar -rcs ${TARGET} ${OBJS} ${OBJS_BONUS}

clean:
	${RM} ${OBJS} ${OBJS_BONUS}

fclean: clean
	${RM} libft.a

re: fclean all

rebonus: fclean bonus