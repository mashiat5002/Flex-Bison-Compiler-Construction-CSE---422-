%{
    #include<stdio.h>
    extern int yylex();
    void yyerror(char *s);
%}

%token INT FLOAT ASSIGN EQUAL LPAREN RPAREN LBRACE RBRACE IF WHILE ADD SUB SEMI  ID  NUM
%start start


%%
start: start INT ID SEMI 
        | IF LPAREN EXPR EQUAL EXPR RPAREN LBRACE start RBRACE
        | /* empty */;
EXPR: NUM | ID;


%%

void yyerror(char *s)
{

}

int main(){
    yyparse();
    printf("\nParser is Finished\n");
    return 0;
}