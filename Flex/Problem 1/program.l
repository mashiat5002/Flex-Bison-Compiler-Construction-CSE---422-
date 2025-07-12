 /*A flex program to identify smaller letter and capital letter from a string*/

%{
    int yywrap(void) {
    return 1;
}
%}

%%
[A-Z] {printf("capital letter:%s\n",yytext);}
[a-z] {printf("small letter:%s\n",yytext);}
[ ] {}
. {printf("Invalid\n");}

%%




int main(){
    yylex();
    return 0;
}