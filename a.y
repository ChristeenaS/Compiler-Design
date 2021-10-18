%{
int yylex(); 
void yyerror();
%}
%{
#include<stdio.h> 
#include<stdlib.h>
%}
%token ID NUMBER
%left '+' '-'
%left '*' '/'
%%
stmt:expr
;
expr: expr '+' expr
| expr '-' expr
| expr '*' expr
| expr '/' expr
| '(' expr ')'
| NUMBER
| ID
;
%%
void main()
{
printf("\nExpression : "); 
yyparse();
printf("Valid Expression\n"); 
exit(0);
}
void yyerror()
{
printf("Invalid Expression\n"); 
exit(0);
}
