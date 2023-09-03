@ECHO OFF

:: If we don't use SETLOCAL here - the var SAVED_ERRORLEVEL is propagated to the calling script
:: However, SETLOCAL changes %ERRORLEVEL% so we have to call it before CALL
:: Also we should call it before CD as it makes the CD effect local to this script
SETLOCAL

CD "Build"

:: Build the Release of our target
CALL cmake --build "./" --target AppTemplateOpenGL --config Release %*

SET /A SAVED_ERRORLEVEL = %ERRORLEVEL%

:: We don't need to ENDLOCAL as it ends automatically with EXIT here
EXIT /B %SAVED_ERRORLEVEL%