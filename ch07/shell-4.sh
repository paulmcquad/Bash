#! /bin/bash

mkdir -p shell4

grep -l "Artist: Kansas" music/*.txt > shell4/p1.txt

echo Today is $( echo $(date +%A) | tr a-z A-Z )! > shell4/p2.txt