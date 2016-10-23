cdef extern from "math.h" nogil:
    double sin(double x)
    double cos(double x)
    double tan(double x)


cpdef print_sin_2_0():
    print('sin(2.0)', sin(2.0))
