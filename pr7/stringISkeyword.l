%{
#include<stdio.h>
%}

%%

"int"|"float"|"char"|"if"|"else"|"while"|"for"|"return" { printf("It is a keyword\n"); }

[a-zA-Z_][a-zA-Z0-9_]* { printf("It is not a keyword\n"); }

%%

int main()
{
    printf("Enter a word(ctrl+c to stop):\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}