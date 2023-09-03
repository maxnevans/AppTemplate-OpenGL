@ECHO OFF

CALL "./GenerateProjectFiles.bat"

IF %ERRORLEVEL% NEQ 0 (
	:: /B - to exit batch script, otherwise it exits all the scripts (even the calling one).
	EXIT /B %ERRORLEVEL%
)

ECHO:
ECHO ======================================
ECHO -- Project generated successfully!  -- 
ECHO ======================================
ECHO:

CALL "./BuildAndRun.bat"