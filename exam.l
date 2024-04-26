%{
int count = 0;
%}

%%
a { count++; }
b {
    if (count > 0) {
        count--;
    } else {
        printf("String is not of the form a^n b^n\n");
        exit(0);
    }
}
\n {
    if (count == 0) {
        printf("String is of the form a^n b^n\n");
    } else {
        printf("String is not of the form a^n b^n\n");
    }
    count = 0;
}
. { printf("String is not of the form a^n b^n\n"); exit(0); }
%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}
