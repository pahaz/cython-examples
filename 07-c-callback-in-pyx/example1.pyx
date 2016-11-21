cdef public:
    ctypedef void (*callback)(int)


# global state!
cdef callback _global_callback

cdef public void set_callback(callback cb):
    global _global_callback
    _global_callback = cb

cdef public void trigger(int value):
    global _global_callback
    if _global_callback != <callback> 0:
        _global_callback(value)
