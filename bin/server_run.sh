#!/bin/sh

#****************************************
INITIALHOST=localhost
INITIALPORT=1050
#****************************************

EXEC_PATH=`pwd`
cd `dirname $0`/..
PROJECT_HOME=`pwd`

echo Running CORBA-HelloServer on $INITIALHOST:$INITIALPORT...
echo [*] Project Home = "$PROJECT_HOME"
cd $PROJECT_HOME/build
java HelloServer -ORBInitialPort $INITIALPORT -ORBInitialHost $INITIALHOST
echo CORBA-HelloServer stopped!

cd $EXEC_PATH
