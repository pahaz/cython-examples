TARGET = incrementer.o example1.so
TARGET_DEPS = $(TARGET:.so=.o) $(TARGET:.so=.c)
PYCFLAGS = `python-config --cflags`
PYLDFLAGS = `python-config --ldflags`


all: $(TARGET) $(TARGET_DEPS)
	echo "OK"

%.c: %.pyx
	cython -3 $< -o $@

%.o: %.c
	$(CC) -c $< -o $@ $(PYCFLAGS)

%.so: %.o
	$(CC) `find -name '*.o'` -o $@ -shared ${PYLDFLAGS}


clean:
	rm -rf $(TARGET) $(TARGET_DEPS) $(TARGET)

test:
	python -c 'import example1'

info:
	echo "TARGET: $(TARGET) DEPS: $(TARGET_DEPS)"
