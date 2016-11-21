all:
	cython -3 pymath.pyx
	gcc -g -O2 -fPIC -c pymath.c -o pymath.o `python3-config --cflags`
	gcc -g -O2 -o pymath.so pymath.o  -shared `python3-config --ldflags`
	cython -3 cycode.pyx
	gcc -g -O2 -fPIC -c cycode.c -o cycode.o `python3-config --includes`
	gcc -g -O2 -fPIC -c main.c -o main.o `python3-config --includes`
	gcc -g -O2 -o main cycode.o main.o `python3-config --ldflags`

test:
	./main

clean:
	rm ./main pymath.so pymath.c pymath.o cycode.c cycode.o cycode.h main.o
