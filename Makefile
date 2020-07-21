NAME = ft_printf.a

FLAGS = -Wall -Wextra -Werror

LIBFT = inc/libft

DIR_S = src/

DIR_O = obj/

INCLUDES = inc/ft_printf.h

SOURCES =	ft_bigint.c \
			ft_bigint_operations.c \
			ft_buff_manage.c \
			ft_color.c\
			ft_handle.c \
			ft_parse_nums.c \
			ft_print_cs.c \
			ft_print_diuoxb.c \
			ft_print_e.c \
			ft_print_f.c \
			ft_printf.c \
			ft_print_options.c \
			ft_print_prk.c \
			ft_set_options.c \
			ft_utils_num.c \
			ft_utils_str.c \

SRCS = $(addprefix $(DIR_S),$(SOURCES))

OBJS = $(addprefix $(DIR_O),$(SOURCES:.c=.o))

all: $(NAME)

$(NAME): $(OBJS)
	@ar rc $(NAME) $(OBJS)
	@ranlib $(NAME)

$(DIR_O)%.o: $(DIR_S)%.c
	@mkdir -p $(DIR_O)
	@$(CC) $(FLAGS) -I $(DIR_S) -o $@ -c $<

clean:
	@rm -rf $(DIR_O)

fclean: clean
	@rm -f $(NAME)

re: fclean all
