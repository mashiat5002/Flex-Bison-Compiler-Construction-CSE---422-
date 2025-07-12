%{
    #include<stdio.h>
    #include<stdlib.h>
    int yylex();
    void yyerror(const char *s);
%}

%token NUM NEWLINE
%left '+' '-'
%left '*' '/'


%%
stat: expr NEWLINE  {printf("TOTAL: %d\nArithmatic Expression\n",$1);}
    | NEWLINE
expr: expr '+' expr {$$=$1+$3;}
    |   expr '-' expr {$$=$1-$3;}
    | expr '*' expr {$$=$1*$3;}
    | '(' expr ')' {$$= $2;}
    | expr '/' expr {
        if($3==0){
            yyerror("Divided by Zero");
            $$=0;
        }else{
            $$=$1/$3;
        }

    }
    | NUM {$$=$1;}
    ;


%%


void yyerror(const char *s){
    printf("Not an arithmatic expression");
}

int main(){
    printf("Enter an expression:");
    yyparse();
    return 0;
}