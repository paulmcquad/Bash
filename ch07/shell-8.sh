#! /bin/bash

mkdir -p shell8

ls -1 | xargs wc -l > shell8/1.txt

find . -type f -name \*.txt -print > shell8/2.txt

find . -type f -name \*.txt -print0 | xargs -0 wc -l  > shell8/3.txt

