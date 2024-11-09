%{
#include<stdio.h>
#include<ctype.h>
int lines = 0, spaces = 0, words = 0, characters = 0;
int in_word = 0;
%}

%%
[\n] {lines++;characters++;in_word = 0;}
[\t ] {spaces++;characters++;in_word = 0;}
[a-zA-Z_][a-zA-Z0-9_]* {if(!in_word){words++;in_word = 1;}characters += yyleng;}
(.) { characters++; in_word = 0; }
%%

int main()
{
printf("\n\nLex Programming\n");
yyin = fopen("myFile.txt", "r");
if (!yyin)
{
 printf("\nError opening file!\n");
 return 1;
}
yylex();
fclose(yyin);

printf("\nTotal number of Lines : %d", lines);
printf("\nTotal number of Spaces : %d", spaces);
printf("\nTotal number of Words : %d", words);
printf("\nTotal number of Characters : %d", characters);

printf("\n\nPROGRAM ENDED\n\n");
return 0;
}

int yywrap()
{
return 1;
}



/*OUTPUT

Lex Programming

Total number of Lines : 1
Total number of Spaces : 1
Total number of Words : 3
Total number of Characters : 22

PROGRAM ENDED

*/

