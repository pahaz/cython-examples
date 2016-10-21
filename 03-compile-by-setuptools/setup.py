from setuptools import setup
from Cython.Build import cythonize

setup(
    name='Compile APP',
    ext_modules=cythonize("example1.pyx"),
)
