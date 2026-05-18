%{
#include<stdio.h>
%}

%%
[0-9]+ {printf("Number detected: %s\n", yytext);}
[a-zA-Z]+ {printf("Word detected: %s\n", yytext);}
%%

int yywrap() {
    return 1;
}

int main(){
    printf("enter input: \n");
    yylex();
    return 0;
}