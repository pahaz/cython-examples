# compile by hand

	cython -3 example1.pyx
	cc -c example1.c -o example1.o `python-config --cflags`
	cc example1.o -o example1.so -shared `python-config --ldflags`
	python -c 'import example1'

# Make

    make
    make test
    make clean
