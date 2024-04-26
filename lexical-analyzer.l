%{
int tokens=0;
%}

%% 

[a-zA-Z][a-zA-Z0-9]* { printf("Token: %s (Identifier)\n", yytext); tokens++; }
[0-9]+ { printf("Token: %s (Number)\n", yytext); tokens++; }

[ \t\n] ;

. { printf("Token: %s (Symbol)\n", yytext); tokens++;}

%%

int main(){
printf("Enter input: \n");
yylex();
printf("Tokens :%d\n", tokens);
return 0;
}

int yywrap(){
return 1;
}
