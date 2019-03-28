cd build

nmake install
if errorlevel 1 exit 1

:: Copy of dll and import library on windows (required by pyzmq)

copy /y %LIBRARY_BIN%\libzmq-mt-4*.dll /b %LIBRARY_BIN%\libzmq.dll
if errorlevel 1 exit 1
copy /y %LIBRARY_LIB%\libzmq-mt-4*.lib /b %LIBRARY_LIB%\libzmq.lib
if errorlevel 1 exit 1
