lex tokenx.l
gcc parser.c lex.yy.c

./a.out < <input_file> (e.g. ./a.out < x.x)