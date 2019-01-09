#!/bin/sh

#************************
ORB_PORT=1050
#************************

EXEC_PATH=`pwd`
cd `dirname $0`/..
PROJECT_HOME=`pwd`

echo Running ORB Service on port $ORB_PORT...
orbd -defaultdb $PROJECT_HOME/orb.db -ORBInitialPort $ORB_PORT
echo ORB Stopped!

cd $EXEC_PATH
