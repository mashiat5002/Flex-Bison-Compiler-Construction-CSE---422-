 /*A flex program to identify integer number or floating number */

%{
    int yywrap(void){
    return 1;
    }
%}


%%
[0-9]+ {printf("Integer\n");}
"."[0-9]+ {printf("Float\n");}
[0-9]+"."[0-9]+ {printf("Float\n");}
%%

int main(){
    yylex();
    return 0;
}