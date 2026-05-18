%{
#include<stdio.h>
#include<stdlib.h>

int yylex();
void yyerror(char *s);
%}

%token NUMBER

%%

expr : expr '+' NUMBER
        {
            printf("%d + %d = %d\n", $1, $3, $1 + $3);
            $$ = $1 + $3;
        }

     | expr '-' NUMBER
        {
            printf("%d - %d = %d\n", $1, $3, $1 - $3);
            $$ = $1 - $3;
        }

     | expr '*' NUMBER
        {
            printf("%d * %d = %d\n", $1, $3, $1 * $3);
            $$ = $1 * $3;
        }

     | expr '/' NUMBER
        {
            if($3 != 0) {
                printf("%d / %d = %d\n", $1, $3, $1 / $3);
                $$ = $1 / $3;
            }
            else {
                printf("Division by zero error\n");
            }
        }

     | NUMBER
        {
            $$ = $1;
            printf("Number: %d\n", $1);
        }

     ;

%%

int main() {
    printf("Enter expression: ");
    yyparse();
    return 0;
}

void yyerror(char *s) {
    printf("Syntax Error: %s\n", s);
}