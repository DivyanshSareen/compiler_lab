%{ 
#include<stdio.h> 
int l=0, s=0, tab=0, ch=0; /*Global variables*/
%} 

%% 
\n l++; // line counter 
([ ])+ s++; // space counter 
\t tab++; // tab counter 
. ch++;	 // characters counter 
%% 

int yywrap(void){
	return 1;
}

int main(void) 
{ 
	yylex(); 
	printf("\nNo. of lines=%d", l); 
	printf("\nNo. of spaces=%d", s); 
	printf("\nNo. of tabs=%d", tab); 
	printf("\nNo. of other characters=%d", ch); 
	return 0;
} 

