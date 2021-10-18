%{
#include<stdio.h> 
int x=1;
%}
%token DIGIT LETTER
%%
start : LETTER s 
s : LETTER s
|DIGIT s
|
;
%%
int main()
{printf("\nVariable : "); 
yyparse();
if(x)
{printf("Valid\n");}
}
int yyerror()
{printf("Invalid !\n"); 
x=0;
return 0;}
