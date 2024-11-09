%{
#include<stdio.h>
#include<ctype.h>

int indx=0;
char arr[50];
int i;
%}

%%
(.) {arr[indx++] = yytext[0];}
[\n] {printf("\nReversed String : ");arr[indx]='\0';for(i=indx-1;i>=0;i--){putchar(arr[i]);}return 1;}
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

Enter your string : hello world

Reversed String : dlrow olleh

PROGRAM ENDED

*/
