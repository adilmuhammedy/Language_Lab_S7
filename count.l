%{
#include <stdio.h>
int char_count=0;
int line_count=0;
int word_count=0;
%}

%%
[a-zA-Z0-9!@#$%^&*()_,] {char_count++;}
" " {word_count++;}
"\n" {word_count++, line_count++;}
%%
int yywrap(){return 1;}

int main(){
FILE *inputfile=fopen("char.txt","r");
yyin=inputfile;
yylex();
printf("char count= %d\n", char_count);
printf("word count= %d\n", word_count);
printf("line count= %d\n", line_count);
fclose(inputfile);
return 0;
}

