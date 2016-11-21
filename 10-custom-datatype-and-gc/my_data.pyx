cimport my_data
from libc.stdlib cimport malloc, free

cdef class Data(object):
    cdef my_data.data_t * _nativeData

    def __init__(self, int value):
        self.set_value(value)

    def __cinit__(self):
        print('__cinit__', sizeof(data_t))
        self._nativeData = <data_t*>malloc(sizeof(data_t))
        if not self._nativeData:
            self._nativeData = NULL
            raise MemoryError()

    def __dealloc__(self):
        print('__dealloc__')
        if self._nativeData is not NULL:
            free(self._nativeData)
            self._nativeData = NULL

    def __str__(self):
        if self._nativeData is not NULL:
            return "%s" % self.value
        else:
            return "Object not initilized!"

    cdef SetNativeValue(self, int value):
        self._nativeData.value = value

    @property
    def value(self):
        return self._nativeData.value

    def set_value(self, int value):
        self.SetNativeValue(value)
