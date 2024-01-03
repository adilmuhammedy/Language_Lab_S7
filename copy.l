%{
#include<stdio.h>
#include<string.h>
char line[100];
%}

%%
[\n] {fprintf(yyout,"%s","\n");}
[0-9] {}
[a-zA-Z]* {strcpy(line,yytext); fprintf(yyout,"%s",line);}
.* {fprintf(yyout,"%s","");}
.
%%

int main(){
yyin=fopen("char.txt","r");
yyout=fopen("output.txt","w");
yylex();
fclose(yyin);
fclose(yyout);
return 0;
}
int yywrap(){ return 1;}

