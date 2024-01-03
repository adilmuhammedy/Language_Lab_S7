%{
#include<stdio.h>

%}
%token NUMBER ID
%left '+' '-'
%left '*' '/'
%%
expr: expr '+' expr|expr'-'expr|expr'*'expr|expr'/'expr|'-'NUMBER|'-'ID|'('expr')'|NUMBER|ID;
%%

int main(){
printf("Enterr the expression\n");
yyparse();
printf("Exrpression is valid");
exit(0);
}
int yyerror(char *msg){
printf("exprssion is invalid");
exit(0);
}

