@echo off

rem ****************************************
set INITIALHOST=localhost
set INITIALPORT=1050
rem ****************************************

set BAT_EXEC_PATH=%cd%
cd /d %~dp0%/..
set PROJECT_HOME=%cd%

echo Running CORBA-HelloServer on %INITIALHOST%:%INITIALPORT%...
echo [*] Project Home = "%PROJECT_HOME%"
cd %PROJECT_HOME%/build
java HelloServer -ORBInitialPort %INITIALPORT% -ORBInitialHost %INITIALHOST%
echo CORBA-HelloServer stopped!

cd %BAT_EXEC_PATH%
