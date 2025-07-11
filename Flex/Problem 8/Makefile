# Makefile for Flex program

# Executable name
TARGET = program

# Flex source file
LEX_FILE = program.l

# Generated C file
C_FILE = lex.yy.c

# Compiler
CC = gcc

# Flags for compiler
CFLAGS = -o $(TARGET)

all: $(TARGET)

$(TARGET): $(C_FILE)
	$(CC) $(C_FILE) $(CFLAGS)

$(C_FILE): $(LEX_FILE)
	flex $(LEX_FILE)

clean:
	del lex.yy.c $(TARGET).exe 2>nul
