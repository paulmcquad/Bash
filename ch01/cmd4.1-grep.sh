#! /bin/bash

# Make a directory "grep"
mkdir -p grep

# find string "Nutshell" from animals.txt
grep Nutshell animals.txt > grep/grep1.txt

# Remove lines with string "Nutshell" from animals.txt
grep -v Nutshell animals.txt > grep/grep2.txt

# find string "Perl" from *.txt
grep Perl *.txt > grep/grep3.txt