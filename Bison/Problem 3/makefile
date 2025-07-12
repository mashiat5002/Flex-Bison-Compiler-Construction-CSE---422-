all: main.exe

main.exe: parser.tab.c lex.yy.c
	gcc -Wall parser.tab.c lex.yy.c -o main.exe

parser.tab.c parser.tab.h: parser.y
	bison -d parser.y

lex.yy.c: lexer.l
	flex lexer.l

clean:
	del parser.tab.c parser.tab.h lex.yy.c main.exe 2>nul

.PHONY: all clean
