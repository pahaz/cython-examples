TARGET = example1.so
TARGET_DEPS = example1.o mycode.o
TARGET_DEPS_C = $(TARGET_DEPS:.o=.c)
PYCFLAGS = -fPIC $(shell python3-config --cflags)
PYLDFLAGS = $(shell python3-config --ldflags)
PYINCLUDES = $(shell python3-config --includes)

all: $(TARGET_DEPS_C) $(TARGET_DEPS) $(TARGET)
	echo "OK"

%.c: %.pyx
	cython -3 $< -o $@

%.o: %.c
	gcc -c $< -o $@ $(PYCFLAGS) $(PYINCLUDES)

%.so: %.o
	$(CC) `find . -name '*.o'` -o $@ -shared ${PYLDFLAGS}

clean:
	rm -rf $(TARGET) $(TARGET_DEPS) example1.c

test:
	python3 -c "import example1; example1.testStruct()"

info:
	echo "TARGET: $(TARGET) DEPS: $(TARGET_DEPS)"
