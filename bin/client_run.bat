@echo off

rem ****************************************
set INITIALHOST=localhost
set INITIALPORT=1050
rem ****************************************

set BAT_EXEC_PATH=%cd%
cd /d %~dp0%/..
set PROJECT_HOME=%cd%

echo Running CORBA-HelloClient on %INITIALHOST%:%INITIALPORT%...
echo [*] Project Home = "%PROJECT_HOME%"
cd %PROJECT_HOME%/build
java HelloClient -ORBInitialPort %INITIALPORT% -ORBInitialHost %INITIALHOST%
echo CORBA-HelloClient finished!

cd %BAT_EXEC_PATH%
