@echo off

rem ************************
set ORB_PORT=1050
rem ************************

set BAT_EXEC_PATH=%cd%
cd /d %~dp0%/..
set PROJECT_HOME=%cd%

echo Running ORB Service on port %ORB_PORT%...
orbd -defaultdb %PROJECT_HOME%/orb.db -ORBInitialPort %ORB_PORT%
echo ORB Stopped!

cd %BAT_EXEC_PATH%