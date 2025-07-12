/*Construct a Flex program to count the number of characters (alphabets, digits and symbols) separately. The program should accept multiple lines of input, and terminate on the "exit" keyword*/

%{
    int yywrap(void){
        return 1;
    }
    int alphabet_count=0;
    int digit_count=0;
    int symbol_count=0;
%}

%%
[a-zA-Z] {alphabet_count++;}
[0-9] {digit_count++;}
[ ] {}
. {symbol_count++;}
exit {printf("Alphabets:%d\nDigits:%d\nSymbols:%d\n",alphabet_count,digit_count,symbol_count);return 0;}

%%

int main(){
    yylex();
    return 0;
}