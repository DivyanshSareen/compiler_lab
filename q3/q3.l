%{
    #include<stdio.h>
%}

%% 
^[+-]?[0-9][0-9]* printf("integer");
^[+-]?[0-9]+[.][0-9]+ printf("float");
.;
%%

int yywrap(void){
    return 1;
}

int main(){
    yylex();
    return 0;
}