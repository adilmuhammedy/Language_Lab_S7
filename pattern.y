%{
#include<stdio.h>
#include<stdlib.h>
%}
%token DIGIT LETTER NL
%%
stmt: S NL {printf("Valid pattern \n"); exit(0);}
;
S: LETTER DIGIT S| DIGIT LETTER S| 
	;
%%
int yyerror(char *msg){ 
	printf("Invalid string\n");
	exit(0);
}
int main(){
printf("Enter aa string; ");
yyparse();
return 0;
}
