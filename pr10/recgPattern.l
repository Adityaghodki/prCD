%{
#include<stdio.h>
%}

%%

ab*         { printf("String matches the pattern(a followed by number of b's(ha mai hi type karra hu))\n"); }

.*          { printf("String does not match\n"); }

%%

int main()
{
    printf("Enter a string:\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}