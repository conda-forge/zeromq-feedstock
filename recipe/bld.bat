mkdir build

cd build

set CMAKE_CONFIG="Release"

cmake ^
  -D CMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
  -D CMAKE_PREFIX_PATH="%LIBRARY_PREFIX%" ^
  -D PYTHON_EXECUTABLE="%PYTHON%" ^
  -D PYTHON_INCLUDE_DIR="%PREFIX%/include" ^
  -D ZMQ_BUILD_TESTS="no" ^
  -G "%CMAKE_GENERATOR%" ^
  ..
if errorlevel 1 exit 1

cmake --build . --config Release
if errorlevel 1 exit 1

cmake --build . --config Release --target install
if errorlevel 1 exit 1
