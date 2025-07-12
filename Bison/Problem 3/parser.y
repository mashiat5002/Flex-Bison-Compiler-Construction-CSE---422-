%{
#include <stdio.h>
extern int yylex();
void yyerror(char *s);
%}

%token A B NEWLINE
%start start

%%

start: MAIN NEWLINE {printf("Accepted\n");}
  ;


MAIN:
    /* empty */
    |A MAIN B
    ;

%%

void yyerror(char *s) {
    printf("%s\n", s);
}

int main() {
    printf(" Enter your string (one per line):\n");
   

    yyparse();

    printf("\n Parsing completed. Goodbye!\n");
    return 0;
}
