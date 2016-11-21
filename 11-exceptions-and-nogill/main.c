#include <Python.h>
#include "cycode.h"

int main(int argc, char ** argv)
{
  Py_Initialize();

  PyInit_cycode();
  run();

  Py_Finalize();

  return 0;
}
