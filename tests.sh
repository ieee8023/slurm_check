#!/bin/bash

name=`hostname | cut -d"." -f1`

pytest

rc=$?
echo "Exit code is $?"
if  [[ $rc == 0 ]]; then
    echo "Command succeeded"
    echo $name >> machines_passed.txt
else
    echo "Command failed"
    echo $name >> machines_failed.txt
fi
