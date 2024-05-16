# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kufato <kufato@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/28 11:03:06 by axcallet          #+#    #+#              #
#    Updated: 2024/05/16 14:42:34 by kufato           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

########## ARGUMENTS ##########

NAME	= libft.a
CC		= gcc
CFLAGS	= -Wall -Wextra -Werror

########## SOURCES ########## 

OBJS		= $(SRCS:.c=.o)
OBJS_ALL	= $(SRCS_ALL:.c=.o)
SRCS		= ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c \
			  ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c \
			  ft_itoa.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c \
			  ft_memset.c ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
			  ft_putstr_fd.c ft_split.c ft_strchr.c ft_strdup.c \
			  ft_striteri.c ft_strjoin.c ft_strlcat.c ft_strlcpy.c \
			  ft_strlen.c ft_strmapi.c ft_strncmp.c ft_strnstr.c \
			  ft_strrchr.c ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c

SRCS_BONUS	= ft_lstadd_back.c ft_lstadd_front.c ft_lstclear.c ft_lstdelone.c \
			  ft_lstiter.c ft_lstlast.c ft_lstmap.c ft_lstnew.c ft_lstsize.c

SRCS_ALL	= $(SRCS) $(SRCS_BONUS)

########## RULES ##########

all: $(NAME)

$(NAME): $(OBJS)
	@echo $(_GREEN)- Compiling mandatory objects$(END)
	@$ ar -rcs $(NAME) $(OBJS)

.c.o:
	@echo $(_CYAN)- Compiling $<$(END)
	@$ $(CC) $(CFLAGS) -c $< -o ${<:.c=.o}

bonus: $(OBJS_ALL)
	@$ ar -rsc $(NAME) $(OBJS_ALL)
	@echo $(_PURPLE)- Compiling bonus objects$(END)

clean:
	@echo $(_YELLOW)- Cleaning objects $(END)
	@$ rm -f $(OBJS_ALL)

fclean:	clean
	@echo $(_RED)- Cleaning $(NAME) $(END)
	@$ rm -f $(NAME)

re:	fclean all

.PHONY : all clean fclean re bonus

########## COLORS ##########

_END		="\033[0m"
_RED		="\033[0;31m"
_GREEN		="\033[0;32m"
_YELLOW		="\033[0;33m"
_CYAN		="\033[0;36m"
_PURPLE		="\033[0;35m"