%{
    #include<stdio.h>
    int yylex();
    void yyerror(char *s);
%}

%token DT FLOAT ASSIGN EQUAL LPAREN RPAREN LBRACE RBRACE IF WHILE ADD SUB SEMI  ID  NUM NL
%start start


%%
start: CONTITION LBRACE  CONTITION RBRACE SEMI  {printf("Parsed\n");}

CONTITION: IF  LPAREN IDORNUM  EQUAL IDORNUM RPAREN
IDORNUM: ID|NUM
%%

void yyerror(char *s)
{
    printf("Not parsed\n");
}

int main(){
    yyparse();
    printf("\nParser is Finished\n");
    return 0;
}