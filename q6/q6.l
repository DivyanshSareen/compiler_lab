%{
#include<stdio.h>
%}

%%
[\t" "]+ fprintf(yyout," ");		
.|\n fprintf(yyout,"%s",yytext);	
%%

int yywrap()
{
return 1;
}

int main(void)
{
yyin=fopen("Input.txt","r");		
yyout=fopen("Output.txt","w");
yylex();
return 0;
}
