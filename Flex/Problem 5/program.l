 /* A flex program to identify string which starts with _ end _ and at least 2 character and at most 4 character in between them */

%{
    int yywrap(void){
    return 1;
    }
%}


%%
_[a-zA-Z]{2,4}_ {printf("Valid\n",yytext);}
.* {printf("Invalid\n",yytext);}
%%

int main(){
    yylex();
    return 0;
}