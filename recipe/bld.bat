set NOPAUSE=true

cd builds\msvc\build

buildall.bat
IF %ERRORLEVEL% NEQ 0 EXIT /B %ERRORLEVEL%
