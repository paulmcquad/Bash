#! /bin/bash

# Make a directory "wc"
mkdir -p wc

wc < animals.txt > wc/count.txt
cat wc/count.txt

grep Perl < animals.txt | wc > wc/count2.txt
cat wc/count2.txt

