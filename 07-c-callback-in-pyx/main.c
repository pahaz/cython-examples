#include <Python.h>
#include "example1.h"  /* auto generated */

static
void my_c_callback(int val)
{
    printf("my_c_callback(%i)\n", val);
}

int main(int argc, char **argv)
{
    // Init Python Runtime
    Py_Initialize();

    // Init example1 module
    PyInit_example1();

    // Set Callback
    set_callback(&my_c_callback);

    // notify
    trigger(12345);
    trigger(12);

    // Close Python Runtime
    Py_Finalize();
    return 0;
}
