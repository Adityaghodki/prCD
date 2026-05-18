%{
#include <stdio.h>
int vowels=0, letters=0;
%}

%%
[aeiouAEIOU]   { vowels++; }
[a-zA-Z] { letters++; }
\n        { printf("total vowels=%d, letters=%d\n",vowels,letters); }
.         ;
%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}