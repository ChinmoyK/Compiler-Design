#include <stdio.h>

extern int yylex();
extern int yylneno;
extern char *yytext;

int main(){
	int ntoken, vtoken;

	FILE *f = fopen("output.txt","w");


	while(ntoken = yylex()){
		fprintf(f,"Token ( %s, %d)\n",yytext, ntoken);
	}
}