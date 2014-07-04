This is a sample cmake project which illustrates adding python
bindings to an existing cmake build without changing that build
in any way.

The project is based on the example presented in the swig
documentation, but with an eye towards integrating into an
existing project rather than building the project from scratch.

There are three build scrips in the project:

src/lib/CMakeLists.txt
src/main/CMakeLists.txt
src/swig/CMakeLists.txt

They first script builds the library, and the second script
demonstrates using the library.  The third script builds the
python plugin using the library project.

The dependencies were structured such that the neither the
library nor the sample driver need to know anything about the
swig integration.  This allows a more seamless framework for
creating language bindings for existing libraries.

The existing libraries need not have been built with cmake, but
they will need to be binary compatible with the toolset cmake
uses to assemble the language binding.

To build and test the example:

----
git clone ...
mkdir build
cd build
cmake ../repo/
PYTHONPATH=./python ../src/swig/python/example-driver.py
