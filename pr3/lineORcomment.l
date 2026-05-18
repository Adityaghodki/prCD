%{
#include<stdio.h>
%}

%%

"//".*          { printf("It is a single line comment\n"); }

"/*".*"*/"      { printf("It is a multi line comment\n"); }

.*              { printf("It is not a comment\n"); }

%%

int main()
{
    printf("Enter a line:\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}