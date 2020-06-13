##
## EPITECH PROJECT, 2019
## Makefile
## File description:
## makefile
##

NAME	=	cpp_test

CC	=	g++

SRC	=	src/test.cpp \

OBJ	=	$(SRC:.cpp=.o)

CXXFLAGS	=	-Wall -Wextra
CXXFLAGS	+=	-I./include -g3
CXXFLAGS	+=	-l sfml-system
CXXFLAGS	+=	-l sfml-graphics
CXXFLAGS	+=	-l sfml-audio
CXXFLAGS	+=	-l sfml-window
CXXFLAGS  +=	-lm

all	:	$(NAME)

$(NAME)	:	$(OBJ)
		$(CC) -o $(NAME) $(OBJ) $(CFLAGS) $(FFLAGS)

clean	:
		rm -f $(OBJ)

fclean	:	clean
		rm -f $(NAME)

re	:	fclean all
