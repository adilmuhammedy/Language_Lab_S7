%{
#include"y.tab.h"
%}
%%
[0-9]+ {yylval=atoi(yytext); return NUMBER;}
[a-zA-Z]+ {return ID;}
[\t]+
\n 
. {return yytext[0];}
%%

