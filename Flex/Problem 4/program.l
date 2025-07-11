 /* A flex program to identify string which starts with _ end _ and at least one alphabet (uppercase/lowercase) */

%{
    int yywrap(void){
    return 1;
    }
%}

%%
_.*[a-zA-Z]+.*_ {printf("Valid\n",yytext);}
.* {printf("Invalid\n",yytext);}
%%

int main(){
    yylex();
    return 0;
}