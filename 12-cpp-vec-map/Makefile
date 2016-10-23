all:
	cython -3 --cplus testvec.pyx
	cython -3 --cplus testmap.pyx
	g++ -g -O2 -fpic -c testvec.cpp -o testvec.o `python-config --includes`
	g++ -g -O2 -fpic -c testmap.cpp -o testmap.o `python-config --includes`
	g++ -g -O2 -shared -o testvec.so testvec.o `python-config --ldflags`
	g++ -g -O2 -shared -o testmap.so testmap.o `python-config --ldflags`

test:
	python tests.py

clean:
	rm -f testvec.cpp testvec.o testvec.so testmap.cpp testmap.o testmap.so
