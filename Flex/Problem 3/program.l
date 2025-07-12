 /* A flex program that starts with a 'p' and ends with a 'q' */

%{
    int yywrap(void){
    return 1;
    }
 

%}

%%
p.*q {printf("Valid:\n");}
.* {printf("Invalid\n");}

%%

int main(){
    yylex();
    return 0;
}