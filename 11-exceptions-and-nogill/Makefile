all:
	cython -3 pymath.pyx
	gcc -g -O2 -c pymath.c -o pymath.o `python-config --cflags`
	gcc -g -O2 -o pymath.so pymath.o  -shared `python-config --ldflags`
	cython -3 cycode.pyx
	gcc -g -O2 -c cycode.c -o cycode.o `python-config --includes`
	gcc -g -O2 -c main.c -o main.o `python-config --includes`
	gcc -g -O2 -o main cycode.o main.o `python-config --ldflags`

test:
	./main

clean:
	rm ./main pymath.so pymath.c pymath.o cycode.c cycode.o cycode.h main.o
