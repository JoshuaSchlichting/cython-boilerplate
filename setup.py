from distutils.core import setup
from Cython.Build import cythonize


setup(name="A Cython hello world app", ext_modules=cythonize("hello.pyx"))
