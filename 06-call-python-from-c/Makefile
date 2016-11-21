TARGET = main
TARGET_DEPS = example1.o example1.c main.o
PYCFLAGS = -fPIC $(shell python3-config --cflags)
PYLDFLAGS = $(shell python3-config --ldflags)
PYINCLUDES = $(shell python3-config --includes)

all: $(TARGET_DEPS)
	gcc -o $(TARGET) main.o example1.o $(PYLDFLAGS) $(PYINCLUDES) $(PYCFLAGS)

%.c: %.pyx
	cython -3 $< -o $@

%.o: %.c
	gcc -c $< -o $@ $(PYINCLUDES)

clean:
	rm -rf $(TARGET) $(TARGET_DEPS) example1.h

test:
	./main

info:
	echo "TARGET: $(TARGET) DEPS: $(TARGET_DEPS)"
