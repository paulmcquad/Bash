#! /bin/bash

# Make a directory "var"
mkdir -p var

printenv HOME > var/home1.txt
printenv USER >> var/home1.txt

echo My name is $USER and my files are in $HOME > var/home2.txt

echo book/ch*ter9 > var/home3.txt

Coding=$HOME/Coding