all:
	cython -3 --embed primes.pyx  # '--embed'  -- generate a main() function that embeds the Python interpreter
	gcc -g -O2 -c primes.c -o primes.o `python-config --includes`
	gcc -g -O2 -o primes primes.o `python-config --ldflags`

test:
	time python pyprimes.py
	time ./primes

clean:
	rm -f *.o primes.c primes
