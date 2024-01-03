%{
#include<stdio.h>
int valid=1;
%}

%%
"aa"[a|b]*"bb" {valid=1;}
"00"1*"00" {valid=1;}
. {valid=0;}
%%

int yywrap(){return 1;}

int main(){
printf("Enter a string: ");
yylex();
if(valid==0) printf("Invalid string");
else printf("Valid string");
return 0;
}
