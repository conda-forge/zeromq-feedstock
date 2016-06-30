mkdir build

cd build

set CMAKE_CONFIG="Release"

cmake ^
  -D CMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
  -D CMAKE_PREFIX_PATH="%LIBRARY_PREFIX%" ^
  -D PYTHON_EXECUTABLE="%PYTHON%" ^
  -D PYTHON_INCLUDE_DIR="%PREFIX%/include" ^
  -D ZMQ_BUILD_TESTS="no" ^
  -G "NMake Makefiles" ^
  ..
if errorlevel 1 exit 1

nmake
if errorlevel 1 exit 1

nmake install
if errorlevel 1 exit 1
