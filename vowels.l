%{
#include<stdio.h>
int count=0;
%}
%%
a|e|i|o|u { count++;}
. {}
%%
int yywrap(){ printf("End of input\n"); return 1;}
int main(){
printf("Enter a string: ");
yylex();
printf("No of vvowels= %d", count);
return 0;
}
