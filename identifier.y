%{
#include<stdio.h>
int yylex();
int yyerror();
int valid=1;
%}
%token digit letter
%%
start : letter s
s : letter s
| digit s
|;
%%
int yyerror()
{
printf("Invalid identifier!!\n");
valid=0;
return 0;
}
int main()
{
printf("Enter the name to test for identifier:\n");
yyparse();
if(valid)
{
	printf("valid identifier\n");
}
}
