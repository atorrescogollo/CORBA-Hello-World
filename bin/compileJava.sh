#!/bin/sh

EXEC_PATH=`pwd`
cd `dirname $0`/..
PROJECT_HOME=`pwd`

echo Compilation is running...

for f in $(find . -name "*.java"); do javac -cp src -d build $f; done

echo Compilation finished!

cd $EXEC_PATH
