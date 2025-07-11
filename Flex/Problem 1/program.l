 /*A flex program to identify smaller letter and capital letter from a string*/

%{
    int yywrap(void) {
    return 1;
}
%}



%%
[a-z] {printf("small letter:%s\n",yytext);}
[ ] {}
[A-Z] {printf("capital letter:%s \n",yytext);}
. {printf("Invalid\n");}
\n {return 0;}
%%




int main(){
    yylex();
    return 0;
}