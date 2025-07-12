/* A flex program to check Even Odd numbers */
%{
    int yywrap(void){
        return 1;
    } 
   
    
%}

%%
[0-9]*("0"|"2"|"4"|"6"|"8") {printf("Even \n");}
[0-9]*("1"|"3"|"5"|"7"|"9") {printf("Odd\n");}




%%

int main(){
    yylex();
    return 0;
}