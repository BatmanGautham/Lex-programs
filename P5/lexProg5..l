%{
#include<stdio.h>
#include<ctype.h>

int caps=0;
%}

%%
[A-Z] {caps++;}
[\n] {return 1;}
(.) {}
%%

int main()
{
printf("\n\nLex Programming\n");

printf("\nEnter your String : ");

yylex();

printf("\nTotal number of capitals : %d",caps);

printf("\n\nPROGRAM ENDED\n\n"); 
return 0;
}

int yywrap()
{
return 1;
}


/*OUTPUT

Lex Programming

Enter your String : Hello World Of Beauty

Total number of capitals : 4

PROGRAM ENDED

*/
