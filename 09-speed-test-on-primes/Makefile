all:
	cython -3 --embed primes.pyx  # '--embed'  -- generate a main() function that embeds the Python interpreter
	gcc -g -O2 -c primes.c -o primes.o `python3-config --includes`
	gcc -g -O2 -o primes primes.o `python3-config --ldflags`

test:
	time python3 pyprimes.py
	time ./primes

clean:
	rm -f *.o primes.c primes
