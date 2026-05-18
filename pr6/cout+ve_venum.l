%{
#include<stdio.h>

int positive = 0, negative = 0;
%}

%%

-[0-9]+        { negative++; }

[0-9]+         { positive++; }

[ \t\n]        ;

.              ;

%%

int main()
{
    printf("Enter numbers(ctel+c to stop):\n");

    yylex();

    printf("\nPositive numbers = %d", positive);
    printf("\nNegative numbers = %d\n", negative);

    return 0;
}

int yywrap()
{
    return 1;
}