#include <Python.h>

int main (int argc, char ** argv)
{
  /* Boiler plate init Python */
  Py_SetProgramName (argv [0]);
  Py_Initialize ();

  /* Init our config module into Python memory. defined in "example1.h" */
  PyInit_example1 ();
  increment (1);

  /* cleanup python before exit ... */
  Py_Finalize ();

  return 0;
}
