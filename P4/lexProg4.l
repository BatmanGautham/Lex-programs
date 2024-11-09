%{
#include<stdio.h>
#include<ctype.h>

int count=0,vowel=0,consonent=0;
%}

%%
[aeiouAEIOU] {vowel++;count++;}
[a-zA-Z] {count++;}

[\n] {return 1;}
(.) {}
%%

int main()
{
printf("\n\nLex Programming\n");

printf("\nEnter your String : ");

yylex();

printf("\nNumber of vowels : %d",vowel);

printf("\nNumber of consonants : %d",count-vowel);

printf("\n\nPROGRAM ENDED\n\n");
return 0;
}

int yywrap()
{
return 1;
}


/*OUTPUT

Lex Programming

Enter your String : Hello beautiful         

Number of vowels : 7
Number of consonants : 7

PROGRAM ENDED

*/
