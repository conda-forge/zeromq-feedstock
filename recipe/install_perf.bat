dir /s
cd build

copy /y .\bin\*_lat.exe /b %LIBRARY_BIN%\
if errorlevel 1 exit 1
copy /y .\bin\*_thr.exe /b %LIBRARY_BIN%\
if errorlevel 1 exit 1
copy /y .\bin\benchmark_radix_tree.exe /b %LIBRARY_BIN%\
if errorlevel 1 exit 1
