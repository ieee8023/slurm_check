#!/bin/bash

machines=`sinfo -pmain -Onodelist -N -h -r -tidle,mix,alloc,resv | grep -v drng`

for m in $machines; do
    echo $m
    sbatch -w $m --qos=low --gres=gpu ./tests.sh
done