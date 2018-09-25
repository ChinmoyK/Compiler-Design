%{
#include "tokenx.h"
%}


%%

[ \n\t] {
	;
}
[0-9]+ {
	return INT;
}
[0-9]+\.[0-9] {
	return FLOAT;
}

\"[^\"]*\" {
	return STRING;
}
\'[^\']*\' {
	return STRING;
}

"!" {
	return NOT;
}

"(" {
	return OPEN_ROUND;
}

")" {
	return CLOSE_ROUND;
}

"{" {
	return OPEN_CURLY;
}

"}" {
	return CLOSE_CURLY;
}

"[" {
	return OPEN_SQUARE;
}

"]" {
	return CLOSE_SQUARE;
}
"." {
	return DOT;
}

";" {
	return SEMI;
}
"++" {
	return INC;
}
"+" {
	return PLUS;
}

"*" {
	return TIMES;
}

"--" {
	return DEC;
}

"-" {
	return MINUS;
}

"/" {
	return DIV;
}

"=" {
	return ASSGN;
}

"," {
	return COMMA;
}

":" {
	return COLON;
}

"==" {
	return EQUAL;
}

"!=" {
	return NOT_EQUAL;
}

"<=" {
	return LESS_EQUAL;
}

">=" {
	return GREATER_EQUAL;
}

"<" {
	return LESS;
}
">" {
	return GREATER;
}

"for" {
	return FOR;
}

"while" {
	return WHILE;
}

"if" {
	return IF;
}

"else" {
	return ELSE;
}

"int" {
	return DTYPE_INT; 
}

"float" {
	return DTYPE_FLOAT;
} 

"string" {
	return DTYPE_STRING;
} 

"#include" {
	return HASH_INCLUDE;
}

"class" {
	return CLASS_IDF;	
} 

[a-zA-Z][a-zA-Z0-9_]* {
	return ID;
}
. {
	printf("Unexpected Character : %c\n",*yytext);
}


%%


int yywrap(void){
	return 1;
}
