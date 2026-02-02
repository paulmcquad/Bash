#! /bin/bash

# Make a directory "stderr"
mkdir -p stderr

cp nonexistent.txt file.txt 2> stderr/errors.txt
#cat stderr/errors.txt

cp nonexistent.txt file.txt 2> stderr/errors2.txt
cp another.txt file.txt 2>> stderr/errors2.txt
#cat stderr/errors2.txt


echo This file exists > stderr/goodfile.txt
cat stderr/goodfile.txt stderr/nonexistent.txt &> stderr/all.output
#cat stderr/all.output