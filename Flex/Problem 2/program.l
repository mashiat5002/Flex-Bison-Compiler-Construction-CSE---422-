 /* A flex program that counts the number of word from a string */

%{
    int yywrap(void){
    return 1;
    }
    int count = 0;

%}

%%
[ ] {count++;}
. {}
\n {printf("Words:%d\n",count+1);count=0;}


%%

int main(){
    yylex();
    return 0;
}