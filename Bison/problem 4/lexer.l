%{
    #include<stdio.h>
    #include<stdlib.h>
    #include "parser.tab.h">
%}
%option noyywrap

%%
[0-9]+ {yylval=atoi(yytext);return NUM;}
"+" {return '+';}
"-" {return '-';}
"*" {return '*';}
"/" {return '/';}
")" {return ')';}
"(" {return '(';}
\n {return NEWLINE;}
%%


