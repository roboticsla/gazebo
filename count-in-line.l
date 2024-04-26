%{
#include <stdio.h>
int space_count = 0;
int vowel_count = 0;
int consonant_count = 0;
int token_count = 0;
int digit_count = 0;
int char_count = 0;
%}

%%
[ \t\n]    { space_count++; char_count++; }
[aeiouAEIOU] { vowel_count++; char_count++; }
[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ] { consonant_count++; char_count++; }
[0-9] { digit_count++; char_count++; }
[ \t]+ { ; }
. { token_count++; char_count++; }
%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    printf("Spaces: %d\n", --space_count);
    printf("Vowels: %d\n", vowel_count);
    printf("Consonants: %d\n", consonant_count);
    printf("Tokens: %d\n", token_count);
    printf("Digits: %d\n", digit_count);
    printf("Characters: %d\n", char_count);
    return 0;
}