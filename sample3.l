%{
#include<stdio.h>
char a[100];
%}
%%
[a-zA-Z]* {strcpy(a,yytext); fprintf(yyout,"%s",a);}
[0-9] {}
%%

int main(){
yyin=fopen("char.txt","r");
yyout=fopen("output.txt","w");
yylex();
fclose(yyin);
fclose(yyout);
return 0;
}
int yywrap(){return 1;}

