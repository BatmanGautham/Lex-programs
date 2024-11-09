%{
#include<stdio.h>
int n=0;
int keywords=0,identifiers=0,operators=0,numbers=0;
%}

%%
if|else|while|for|switch|do|return|char|void|int|float|double|break|continue|goto|sizeof|typedef|struct|union|enum|const|static|volatile|extern|auto|register {printf("\n%s is an Keyword",yytext);keywords++;n++;}

[_a-zA-Z_][_a-zA-Z0-9_]* {printf("\n%s is an Identifier",yytext);identifiers++;n++;}

"="|"+"|"-"|"*"|"/"|"<"|">" {printf("\n%s is an operator",yytext);operators++;n++;}

[0-9]+ {printf("\n%s is a Number",yytext);numbers++;n++;}

(.) {}

"\t"|"\n" {return 1;}
%%

int main()
{
printf("\nLex Programing\n");

printf("\nEnter the input text : ");
yylex();

printf("\n\nTotal keywords: %d\n",keywords);
printf("Total identifiers: %d\n",identifiers);
printf("Total operators: %d\n",operators);
printf("Total numbers: %d\n",numbers);

printf("\nTotal tokens: %d", n);

printf("\n\nPROGRAM ENDED\n\n");

return 0;
}

int yywrap()
{
return 1;
}


/*OUTPUT

Lex Programing

Enter the input text : float a=b*x + _star36 while 36  

float is an Keyword
a is an Identifier
= is an operator
b is an Identifier
* is an operator
x is an Identifier
+ is an operator
_star36 is an Identifier
while is an Keyword
36 is a Number

Total keywords: 2
Total identifiers: 4
Total operators: 3
Total numbers: 1

Total tokens: 10

PROGRAM ENDED

*/


