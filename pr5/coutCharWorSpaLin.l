%{
#include<stdio.h>

int chars = 0, words = 0, spaces = 0, lines = 0;
%}

%%

[a-zA-Z0-9]+      { words++; chars += yyleng; }

[ ]               { spaces++; chars++; }

\n                { lines++; chars++; }

.                 { chars++; }

%%

int main()
{
    printf("Enter text (Press Ctrl+C to stop):\n");

    yylex();

    printf("\nCharacters = %d", chars);
    printf("\nWords = %d", words);
    printf("\nSpaces = %d", spaces);
    printf("\nLines = %d\n", lines);

    return 0;
}

int yywrap()
{
    return 1;
}