TARGET = main
TARGET_DEPS = example1.o example1.c main.o
PYCFLAGS = $(shell python-config --cflags)
PYLDFLAGS = $(shell python-config --ldflags)
PYINCLUDES = $(shell python-config --includes)

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
