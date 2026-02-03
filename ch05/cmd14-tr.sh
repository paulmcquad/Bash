#! /bin/bash

# Make a directory "tr"
mkdir -p tr

echo $PATH | tr : "\n" > tr/tr1.txt

echo efficient | tr a-z A-Z > tr/tr2.txt

echo Efficient | tr A-Z a-z >>  tr/tr2.txt

echo Efficient Linux | tr " " "\n" > tr/tr3.txt

echo efficient linux | tr -d ' \t' > tr/tr4.txt