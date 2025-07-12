%option noyywrap
%{
#include "parser.tab.h"
%}

digit   [0-9]
letter  [a-zA-Z]
id      (_|{letter})({letter}|{digit})*
number  ({digit})+
ws      [ \t\n]
delim   ({ws})*

%%
{ws}                {}
"int"               { return INT; }
"float"             { return FLOAT; }
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
{id}            { return ID; }
{number}            { return NUM; }
