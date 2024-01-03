%{
#include<stdio.h>
int valid=0;
%}
letter [a-zA-Z]
digit [0-9]
identifier ({letter}({letter}|{digit})*)
%%
{identifier} {valid=1;}
. {valid=0; return 0;}
%%
int yywrap(){return 1;}
int main(){
printf("Enter an identifier: ");
yylex();
if(valid==1){
printf("Valid identifier");
}
else {
printf("Invalid identifier");
}
return 0;
}

