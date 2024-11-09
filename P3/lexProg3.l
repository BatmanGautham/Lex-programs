%{
#include<stdio.h>
#include<ctype.h>
%}

%%
[a-z] {putchar(toupper(yytext[0]));} 
[ |\t] {putchar(yytext[0]);}
[\n] {return 1;}
(.) { putchar(yytext[0]); }
%%

int main()
{
 printf("\n\nLex Programming\n");
 
 printf("\nEnter your string : ");
 
 yylex();
 
 printf("\n\nPROGRAM ENDED\n\n");
 return 0;
}

int yywrap()
{
 return 1;
}



/*OUTPUT


Lex Programming

Enter your string : World is 36 times "Beautiful".
WORLD IS 36 TIMES "BEAUTIFUL".

PROGRAM ENDED

*/
