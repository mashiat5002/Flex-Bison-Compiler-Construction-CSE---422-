%{
    #include "parser.tab.h"
%}

%%
a   { return A; }
b   { return B; }
\n { return NEWLINE; }
%%

int yywrap(){
    return 1;
}