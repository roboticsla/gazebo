%{
#include<stdio.h>
#include<stdlib.h>
int condition = 0;
%}
%%

[a-z . 0-9]+@[a-z]+".com"|".in" { condition=1; }

"\n" {
 if (condition == 1){
    printf("Valid email\n");
    condition = 0;
 }else{
    printf("Invalid email\n");
 }
}

%%

 
int yywrap(void){}
  

int main()
{
 yylex();
}
