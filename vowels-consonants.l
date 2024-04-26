%{
int vowels =0;
int consonants =0;
%}

%%

[AaEeIiOoUu] {vowels++;}
[A-Za-z] {consonants++;}
.|\n {return 0;}
%%

int main(){
yylex();
printf("Vowels: %d\n Consonants: %d\n", vowels, consonants);
return 0;
}

int yywrap(){
return 1;
}