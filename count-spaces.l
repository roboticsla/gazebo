%{
#include <stdio.h>
int space_count = 0;
%}

%%
[ ] { space_count++; }
\n { }
.
%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    printf("Number of spaces: %d\n", space_count);
    return 0;
}