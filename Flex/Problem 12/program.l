/*Construct a Flex program to read a C-like source code that can
 identify and count the number of Identifiers, Keywords (int, float, if, else, return),
  Numbers (constants) (n < 1000). The program should terminate only when there is a 
space separated ‘S’. You can use exit(0) from stdlib.h header file, for termination mechanism.*/

%{
  
   int Identifiers_count=0;
   int keyword_count=0;
   int Constant_count=0;
%}
%option noyywrap


%%

int|float|if|else|return {keyword_count++; printf("Keyword:%s\n",yytext);}
_[a-zA-Z0-9]+  {Identifiers_count++; printf("Identifier:%s\n",yytext);}
[a-zA-Z]+[0-9]+  {Identifiers_count++; printf("Identifier:%s\n",yytext);}
[a-zA-Z]+  {Identifiers_count++; printf("Identifier:%s\n",yytext);}
[0-9]+ {Constant_count++; printf("Constant:%s\n",yytext);}
[ ]S {printf("Total Keywords:%d\nTotal Identifier:%d\nTotal Constants:%d\n",keyword_count,Identifiers_count,Constant_count);}
. {}
%%

int main(){
    yylex();
    return 0;
}