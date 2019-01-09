@echo off

set BAT_EXEC_PATH=%cd%
cd /d %~dp0%/..
set PROJECT_HOME=%cd%

echo Compilation is running...

for /f %%f in ('dir /s /B *.java') do javac -cp src -d build %%f

echo Compilation finished!

cd %BAT_EXEC_PATH%
