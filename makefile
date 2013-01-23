a02:a02.o a022.o
	gcc -o a02 a02.o a022.o 
a022.o:a02.c
	gcc -c -o a022.o a02.c -I /workarea/cprogram/include/
a02.o:a02.s
	as -o a02.o a02.s

