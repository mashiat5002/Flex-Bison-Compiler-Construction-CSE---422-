# Makefile for Bison and Flex on Windows

# File names
BISON_FILE = parser.y
FLEX_FILE = lexer.l
BISON_OUTPUT = parser.tab.c
BISON_HEADER = parser.tab.h
FLEX_OUTPUT = lex.yy.c
EXECUTABLE = main.exe

# Compiler and flags
CC = gcc
CFLAGS = -Wall

all: $(EXECUTABLE)

$(BISON_OUTPUT): $(BISON_FILE)
	bison -d $(BISON_FILE)

$(FLEX_OUTPUT): $(FLEX_FILE)
	flex $(FLEX_FILE)

$(EXECUTABLE): $(BISON_OUTPUT) $(FLEX_OUTPUT)
	$(CC) $(CFLAGS) $(BISON_OUTPUT) $(FLEX_OUTPUT) -o $(EXECUTABLE)

clean:
	@if exist $(BISON_OUTPUT) del $(BISON_OUTPUT)
	@if exist $(BISON_HEADER) del $(BISON_HEADER)
	@if exist $(FLEX_OUTPUT) del $(FLEX_OUTPUT)
	@if exist $(EXECUTABLE) del $(EXECUTABLE)

.PHONY: all clean
