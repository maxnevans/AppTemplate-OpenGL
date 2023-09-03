@ECHO OFF
:: Generate project for Visual Studio 2022, use x64 platform
cmake %* -G "Visual Studio 17 2022" -A x64 -Wno-dev -B "./Build" -S "./"
EXIT /B %ERRORLEVEL%