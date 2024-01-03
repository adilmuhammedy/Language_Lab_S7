%{
#include<stdio.h>
char line[100];
%}

%%
\n {fprintf(yyout,"%s","\n");}
[a-zA-Z]* {strcpy(line,yytext); fprintf(yyout,"%s",line);}
[0-9] {}
"("|"{"|"[" {fprintf(yyout,"%s"," begin ");}
")"|"}"|"]" {fprintf(yyout,"%s"," end ");}
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

