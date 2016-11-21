all:
	cython -3 my_data.pyx
	gcc -g -O2 -fPIC -c my_data.c -o my_data.o `python3-config --includes`
	gcc -g -O2 -shared -o my_data.so my_data.o `python3-config --ldflags`

test:
	python3 main.py

clean:
	rm -rf *.o *.so my_data.c
