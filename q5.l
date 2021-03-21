%{
#include<stdio.h>
int tchar=0,tword=0,tspace=0;		
%}

%option noyywrap

%%

" " {tspace++;tword++;}				
[\t\n] tword++;						
[^\n\t] tchar++;

%%

int main()
{

yyin=fopen("q4.txt","r");
/*call the yylex function.*/
yylex();							
printf("Number of character:: %d\nNumber of words:: %d\nNumber of spaces:: %d\n",tchar,tword,tspace);

return 0;
}

