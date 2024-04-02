C_FLAGS = -Wall -Wextra -fsanitize=address -g
CC = gcc

C_CHECK_INPUT_ROOT = ..
include $(C_CHECK_INPUT_ROOT)/Makefile

all: test_main

test_main: test_main.c c_check_input.o
	$(CC) $(C_FLAGS) c_check_input.o test_main.c -o main

test_clean: 
	rm main
	
clean: test_clean
