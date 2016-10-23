from pymath import print_sin_2_0

cdef void something_else():
    print("Away doing something else now...")

cdef public int myfunc() except ? -1:
    cdef int retval = -1
    # raise Exception ("Raising an exception!")
    return retval

cdef public void run():
    print_sin_2_0()
    try:
        myfunc()
        something_else()
    except Exception as e:
        print("Something wrong", repr(e))
