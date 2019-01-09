#!/bin/sh

EXEC_PATH=`pwd`
cd `dirname $0`/..
PROJECT_HOME=`pwd`
IDL_FILE=$PROJECT_HOME/resources/Hello.idl

echo Generating Java Files from IDL File...
echo [*] Project Home = "$PROJECT_HOME"
echo [*] IDL File     = "$IDL_FILE"
cd $PROJECT_HOME/src/
idlj -fall $IDL_FILE
echo Execution finished!
cd $EXEC_PATH
