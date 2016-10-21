cdef extern from "incrementer.h":
    cdef int increment(int x)


cdef int add(int a, int b):
    cdef int i, r = a;
    for i in range(b):
        r = increment(r)
    return r


print('add(1, 2) ->', add(1, 2))
