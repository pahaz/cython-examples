all:
	cython -3 --cplus testvec.pyx
	cython -3 --cplus testmap.pyx
	g++ -g -O2 -fPIC -c testvec.cpp -o testvec.o `python3-config --includes`
	g++ -g -O2 -fPIC -c testmap.cpp -o testmap.o `python3-config --includes`
	g++ -g -O2 -shared -o testvec.so testvec.o `python3-config --ldflags`
	g++ -g -O2 -shared -o testmap.so testmap.o `python3-config --ldflags`

test:
	python3 tests.py

clean:
	rm -f testvec.cpp testvec.o testvec.so testmap.cpp testmap.o testmap.so
