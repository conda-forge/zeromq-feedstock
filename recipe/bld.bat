mkdir build

cd build

set CMAKE_CONFIG="Release"

cmake ^
  -D WITH_PERF_TOOL=OFF ^
  -D ZMQ_BUILD_TESTS=OFF ^
  -D ENABLE_CPACK=OFF ^
  -D CMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
  -D CMAKE_PREFIX_PATH="%LIBRARY_PREFIX%" ^
  -D PYTHON_EXECUTABLE="%PYTHON%" ^
  -D PYTHON_INCLUDE_DIR="%PREFIX%\include" ^
  -G "NMake Makefiles" ^
  ..
if errorlevel 1 exit 1

nmake
if errorlevel 1 exit 1

nmake install
if errorlevel 1 exit 1
