mkdir build

cd build

cmake ^
  -G "%CMAKE_GENERATOR%" ^
  -D BUILD_FOR_DISTRIBUTION="yes" ^
  -D BUILD_SHARED_LIBS="yes" ^
  -D BUILD_STATIC_LIBS="yes" ^
  -D CMAKE_BUILD_TYPE="Release" ^
  -D CMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
  -D CMAKE_PREFIX_PATH="%LIBRARY_PREFIX%" ^
  -D PYTHON_EXECUTABLE="%PYTHON%" ^
  -D ZMQ_BUILD_TESTS="no" ^
  ..
if errorlevel 1 exit 1

cmake --build . --config Release
if errorlevel 1 exit 1

cmake --build . --config Release --target install
if errorlevel 1 exit 1
