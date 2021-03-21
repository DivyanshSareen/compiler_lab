%{
#include<stdio.h>
int ch=0,word=0,space=0;		
%}

%%
" " {space++; word++;}				
[\t\n] word++;						
[^\n\t] ch++;
%%

int yywrap(void){
    return 1;
}

int main()
{
yyin=fopen("q5.txt","r");
yylex();							
printf("No. characters = %d\nNo. of words = %d\nNo. of spaces = %d\n", ch, word, space);
return 0;
}

