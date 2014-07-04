/* File: example.i */
%module pyexample

%{
#define SWIG_FILE_WITH_INIT
#include "example.h"
%}

int fact(int n);
