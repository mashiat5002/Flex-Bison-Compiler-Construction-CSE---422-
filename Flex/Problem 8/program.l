/* A flex program that accepts any string with 'pq' or 'PQ' anywhere in the string */
%{
    int yywrap(void){
        return 1;
    }
    
%}

%%
.*pq.* {printf("Valid\n");}
.*PQ.* {printf("Valid\n");}
.* {printf("Invalid\n");}


%%

int main(){
    yylex();
    return 0;
}