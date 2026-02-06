#! /bin/bash

mkdir -p test09

if [ -n "$1" ]; then
grep -iw "$1" areacodes.txt
fi

#./areacode.sh 617