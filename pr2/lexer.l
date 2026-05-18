%{
#include "parser.tab.h"
#include<stdio.h>
#include<stdlib.h>
%}

%%

[0-9]+      {
                yylval = atoi(yytext);
                return NUMBER;
            }

"+"         return '+';
"-"         return '-';
"*"         return '*';
"/"         return '/';

\n          return '\n';

[ \t]       ;

.           {
                printf("Invalid Character: %s\n", yytext);
            }

%%

int yywrap() {
    return 1;
}