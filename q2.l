%{ 
#include<stdio.h>
%}

%option noyywrap

%%
^[_A-Za-z][a-zA-Z0-9_]* printf("valid");
^[^_A-Za-z] printf("invalid");
.;
%%

int main(){
yylex();
return 0;
}
