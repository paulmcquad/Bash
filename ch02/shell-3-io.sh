#! /bin/bash

# Make a directory "io"
mkdir -p io

# Create/Overwite
grep Perl animals.txt >io/io1.txt

# Create/Overwite then append to file
grep Perl animals.txt > io/io2.txt
echo There was just one match >> io/io2.txt
#cat io/io2.txt

wc animals.txt

