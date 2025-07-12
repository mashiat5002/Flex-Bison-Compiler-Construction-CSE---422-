/*Construct a valid token for the language, L that accepts strings of lowercase letters joined with underscores and at most one upper case letter.*/

%{
    int yywrap(void){
        return 1;
    }
%}

%%
_[a-z0-9]*[A-Z][a-z0-9]*_ {printf("Valid\n");}
_[a-z0-9]*_ {printf("Valid\n");}
.* {{printf("invalid\n");}}
\n {}

%%

int main(){
    yylex();
    return 0;
}