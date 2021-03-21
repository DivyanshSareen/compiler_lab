%{ 
#include<stdio.h>
%}

%%
^[_A-Za-z][a-zA-Z0-9_]* printf("valid");
^[^_A-Za-z].* printf("invalid");
.;
%%

int yywrap(void){
    return 1;
}

int main(){
yylex();
return 0;
}
