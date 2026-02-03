#! /bin/bash

# Make a directory "rev"
mkdir -p rev

echo Efficient Linux! | rev > rev/rev1.txt

rev celebrities.txt > rev/rev2.txt
rev celebrities.txt | cut -d' ' -f1 > rev/rev3.txt
rev celebrities.txt | cut -d' ' -f1 | rev > rev/rev4.txt