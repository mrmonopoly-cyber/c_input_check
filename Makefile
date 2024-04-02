C_FLAGS = -Wall -Wextra -fsanitize=address -g
CC = gcc

c_check_input_src := $(or $(C_CHECK_INPUT_ROOT), .)

all: c_check_input.o

c_check_input.c := $(c_check_input_src)/c_check_input.c

c_check_input.o: $(c_check_input.c)
	$(CC) $(C_FLAGS) $(c_check_input.c) -c

c_check_input_clean:
	rm c_check_input.o

clean: c_check_input_clean
