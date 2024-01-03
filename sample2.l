%{
#include<stdio.h>
int charc=0;
int linec=0;
int wordc=0;
%}
%%
[a-zA-Z0-9!@#$%^&*()] {charc++;}
" " {wordc++;}
"\n" {wordc++; linec++;}
%%

int yywrap(){return 1;}

int main(){
FILE *ip=fopen("char.txt", "r");
yyin=ip;
yylex();
printf("Character count=%d\n", charc);
printf("Word count=%d\n", wordc);
printf("Line count=%d\n", linec);
fclose(ip);

return 0;
}
