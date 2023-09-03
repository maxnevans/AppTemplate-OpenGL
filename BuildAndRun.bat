@ECHO OFF

CALL "./Build.bat"

IF %ERRORLEVEL% NEQ 0 (
	:: /B - to exit batch script, otherwise it exits all the scripts (even the calling one).
	EXIT /B %ERRORLEVEL%
)

ECHO:
ECHO ======================================
ECHO -------- Built successfully! ---------
ECHO ======================================
ECHO:

CALL "./Build/Release/AppTemplateOpenGL.exe"

:: Return fall through the exit code here. Otherwise it won't work
EXIT /B %ERRORLEVEL%