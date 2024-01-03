%{
#include <stdio.h>
int valid = 1;
%}

%%
"aa"[a|b]*"bb" { valid = (valid == 0) ? 0 : 1; }
[01]*"000"[01]* { valid = (valid == 0) ? 0 : 1; }
. {valid=0;}
"\n" {return 0;}  
%%

int yywrap() {
    return 1;
}

int main(int argc, char *argv[]) {
    printf("Enter a String: ");
    yylex();
    if (valid == 0)
        printf("Invalid string\n");
    else
        printf("Valid String\n");
    return 0;
}

