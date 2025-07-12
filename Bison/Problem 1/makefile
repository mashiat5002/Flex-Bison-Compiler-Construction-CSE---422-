# Makefile

# File names
BISON_FILE = parser.y
FLEX_FILE = lexer.l
BISON_OUTPUT = parser.tab.c
BISON_HEADER = parser.tab.h
FLEX_OUTPUT = lex.yy.c
EXECUTABLE = main

# Compiler
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
	rm -f $(BISON_OUTPUT) $(BISON_HEADER) $(FLEX_OUTPUT) $(EXECUTABLE)
