%{
int stmt_count=0;
int id_count=0;
int assign_count=0;
int rel_count=0;
int key_count=0;
int int_count=0;
%}
%%
[if|else|while|for|do|break|continue|int|float|char|double|return|const|auto|default|goto|static|void|switch|enum|struct|main] {key_count++;}
\".*\";
"printf";
[a-zA-Z_][A-Za-z0-9_]* {id_count++;}
"=" {assign_count++;}
"<"|">"|"=="|"<="|">=" {rel_count++;}
[0-9]+ {int_count++;}
";" {stmt_count++;}
.
%%
int yywrap(){ return 1; }
int main(){
FILE *ip=fopen("char.txt", "r");
yyin=ip;
yylex();
printf("No. of statements= %d\n", stmt_count);
printf("No. of keywords= %d\n", key_count);
printf("No. of identifiers= %d\n", id_count);
printf("No. of assignment operators= %d\n", assign_count);
printf("No. of relational operators= %d\n", rel_count);
printf("No. of integers= %d\n", int_count);
return 0;
}
