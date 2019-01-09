@echo off
set BAT_EXEC_PATH=%cd%

cd /d %~dp0%/..
set PROJECT_HOME=%cd%
set IDL_FILE=%PROJECT_HOME%/resources/Hello.idl

echo Generating Java Files from IDL File...
echo [*] Project Home = "%PROJECT_HOME%"
echo [*] IDL File     = "%IDL_FILE%"
cd %PROJECT_HOME%/src/
idlj -fall %IDL_FILE%
echo Execution finished!
cd %BAT_EXEC_PATH%