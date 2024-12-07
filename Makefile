NAME = libftprintf.a
CC = cc 
CFLAGS = -Wall -Wextra -Werror

SRC = ft_writes.c ft_numbers.c ft_hexedecimal.c ft_point.c ft_strlen.c ft_printf.c

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar r $(NAME) $(OBJ)

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)
	
re: fclean all

test: re clean
	@gcc main.c libftprintf.a -o test

.PHONY: all clean fclean re