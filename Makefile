CC = gcc
C_FLAGS = -Wall -Wextra -g

c_check_input_src := $(or $(C_CHECK_INPUT_ROOT), .)

DEBUG_FLAGS = -O0 -fsanitize=address
RELEASE_FLAGS = -O2

all: release

debug: C_FLAGS += $(DEBUG_FLAGS)
debug: clean c_check_input.o

release: C_FLAGS += $(RELEASE_FLAGS)
release: clean c_check_input.o

c_check_input.c := $(c_check_input_src)/c_check_input.c

c_check_input.o: $(c_check_input.c)
	$(CC) $(C_FLAGS) $(C_EXTR_FLAGS) $(c_check_input.c) -c

c_check_input_clean:
ifeq ($(wildcard c_check_input.o), c_check_input.o)
	rm c_check_input.o
endif

clean: c_check_input_clean
