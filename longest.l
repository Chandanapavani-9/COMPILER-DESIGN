%{
#include <stdio.h>
#include <string.h>
int max_length = 0;
%}

%%
[a-zA-Z]+   {
                int current_length = yyleng;
                if (current_length > max_length) {
                    max_length = current_length;
                }
            }
.|\n        ;   // Ignore other characters

%%

int main() {
    yylex();
    printf("Length of the longest word: %d\n", max_length);
    return 0;
}
int yywrap() {
    return 1; // Indicate that there are no more input files
}