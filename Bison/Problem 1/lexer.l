%option noyywrap
%{
#include "parser.tab.h"
%}


%%
\n                  {NL;}
[ \t]                {}
"int"|"float"|"char"  { return DT; }
"="                 { return ASSIGN; }
"=="                { return EQUAL; }
"("                 { return LPAREN; }
")"                 { return RPAREN; }
"{"                 { return LBRACE; }
"}"                 { return RBRACE; }
"if"                { return IF; } 
"while"             { return WHILE; }
"+"                 { return ADD; }
"-"                 { return SUB; }
";"                 { return SEMI; }
[0-9]+            { return NUM; }
[a-zA-Z_][a-zA-Z0-9_]*     { return ID; }
