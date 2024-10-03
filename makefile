# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -Wextra -g

# List of object files
OBJ = asst6.o some_heap.o

# Name of the executable
EXEC = ./heap

# Default target
all: $(EXEC)

# Rule to link object files and create the executable
$(EXEC): $(OBJ)
	$(CC) $(CFLAGS) -o $(EXEC) $(OBJ)

# Rule to compile asset6.c into asset6.o
asst6.o: asst6.c some_heap.h
	$(CC) $(CFLAGS) -c asst6.c

# Rule to compile some_heap.c into some_heap.o
some_heap.o: some_heap.c some_heap.h
	$(CC) $(CFLAGS) -c some_heap.c

# Clean up object files and executable
clean:
	rm -f $(OBJ) $(EXEC)

# Phony target so that make doesn't confuse it with a file
.PHONY: clean
