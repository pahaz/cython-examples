cdef int increment(int i):
    return i + 1

print('increment(5) ->', increment(5))

cdef int a[3]
a[:] = [0, 0, 0]

cdef i
cdef bint xxx = False

for i in range(10):
    a[i % 3] += i

print(a)
