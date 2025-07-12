%{
    #include "parser.tab.h"
%}

%%
"0" {return ZERO;}
"1" {return ONE;}
\n  {return NEWLINE;}

%%

int yywrap(){
    return 1;
}