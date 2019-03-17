#!/bin/bash

name=`hostname | cut -d"." -f1`

timeout -s KILL 45 pytest

rc=$?
echo "Exit code is $?"
if  [[ $rc == 0 ]]; then
    echo "Command succeeded"
    echo $name >> machines_passed.txt
else
    echo "Command failed"
    echo $name EC:$rc >> machines_failed.txt
fi
