%{
#include<stdio.h>
#include<string.h>
int vowel = 0;
int consonants = 0;
%}
  
/* Rules Section*/
%%
([aeiouAEIOU])    {vowel++;}  /* Rule for counting number of words*/
[a-zA-Z] {consonants++;}  /* Rule for counting number of words*/
 
"\n" {printf("Total Number of vowels are : %d and consonants are %d\n", vowel, consonants);}
%%
  
int yywrap(void){}
  
int main()
{   
    // The function that starts the analysis
    yylex();
    return 0;
}
