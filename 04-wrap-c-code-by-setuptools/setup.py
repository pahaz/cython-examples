from setuptools import setup, Extension
from Cython.Build import cythonize

ext = Extension("example1", sources=["example1.pyx", "incrementer.c"])

setup(
    name='Compile APP',
    ext_modules=cythonize([ext]),
)
