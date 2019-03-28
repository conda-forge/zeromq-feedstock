cd build

copy /y .\bin\*_lat.exe .\bin\*_thr.exe .\bin\benchmark_radix_tree.exe /b %LIBRARY_BIN%\
if errorlevel 1 exit 1
