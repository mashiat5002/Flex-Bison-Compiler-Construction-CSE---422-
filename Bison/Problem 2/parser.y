%{
#include <stdio.h>
extern int yylex();
void yyerror(char *s);
%}

%token ZERO ONE NEWLINE
%start start

%%

start: ZERO MID ONE NEWLINE {printf("\naccepted\n");}
  

MID:MID ZERO  
  |MID ONE 
  | /* empty */
  ;

%%

void yyerror(char *s) {
    printf("%s\n", s);
}

int main() {
    printf(" Enter binary strings (one per line):\n");

    yyparse();

    printf("\n Parsing completed. Goodbyee!\n");
    return 0;
}
