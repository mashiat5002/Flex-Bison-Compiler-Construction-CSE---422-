/* Construct a simple calculator (addition and subtraction)*/
%{
    int yywrap(void){
        return 1;
    }
    int count=0;
%}

%%
[0-9]+ {count= atoi(yytext);}
"+"[ ]*[0-9]+ {count= count + atoi(yytext+1);}
"-"[ ]*[0-9]+ {count= count - atoi(yytext+1);}
\n {printf("\nTotal:%d\n",count);}

%%

int main(){
    yylex();
    return 0;
}