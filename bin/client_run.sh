#!/bin/sh

#****************************************
INITIALHOST=localhost
INITIALPORT=1050
#****************************************

EXEC_PATH=`pwd`
cd `dirname $0`/..
PROJECT_HOME=`pwd`

echo Running CORBA-HelloClient on $INITIALHOST:$INITIALPORT...
echo [*] Project Home = "$PROJECT_HOME"
cd $PROJECT_HOME/build
java HelloClient -ORBInitialPort $INITIALPORT -ORBInitialHost $INITIALHOST
echo CORBA-HelloClient finished!

cd $EXEC_PATH
