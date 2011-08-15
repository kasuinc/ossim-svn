%module pyossimtest

%{

#include <pyossimtest/Constants.h>
#include <pyossimtest/Info.h>
#include <pyossimtest/Init.h>
#include <pyossimtest/SingleImageChain.h>

#include <exception>

%}

/* Handling exception */
%include <exception.i>
%exception
{
        try
        {
                $action
        }
        catch (const std::exception& e)
        {
                SWIG_exception(SWIG_RuntimeError, e.what());
        }
}

%typemap(in) (int argc, char *argv[]) 
{
        int i;

        if (!PyList_Check($input)) 
        {
                PyErr_SetString(PyExc_ValueError, "Expecting a list");
                return NULL;
        }
        
        $1 = PyList_Size($input);
        $2 = (char **) malloc(($1+1)*sizeof(char *));
        
        for (i = 0; i < $1; i++) 
        {
                PyObject *s = PyList_GetItem($input,i);
                if (!PyString_Check(s)) 
                {
                        free($2);
                        PyErr_SetString(PyExc_ValueError, "List items must be strings");
                        return NULL;
                }
                $2[i] = PyString_AsString(s);
        }
        $2[i] = 0;
}

%typemap(freearg) (int argc, char *argv[]) 
{
        if ($2) free($2);
}


/* Including classes */
%include <pyossimtest/Constants.h>
%include <pyossimtest/Info.h>
%include <pyossimtest/Init.h>
%include <pyossimtest/SingleImageChain.h>