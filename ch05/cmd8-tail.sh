#! /bin/bash

# Make a directory "tail"
mkdir -p tail

# cat alphabet.txt > tail/tail1.txt

tail -n3 alphabet.txt > tail/tail2.txt

tail -n+25 alphabet.txt > tail/tail3.txt

head -n4 alphabet.txt | tail -n1 > tail/tail4.txt

head -n8 alphabet.txt | tail -n3 > tail/tail5.txt