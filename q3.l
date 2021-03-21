%{
    #include<stdio.h>
%}

%option noyywrap

%% 
^[+-]?[0-9][0-9]* printf("integer");
^[+-]?[0-9]+[.][0-9]+ printf("float");
.;
%%

int main(){
    yylex();
    return 0;
}