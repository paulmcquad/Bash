#! /bin/bash

# Make a directory "grep2"
mkdir -p grep2

# ls *.py

#grep Linux chapter1 chapter2 chapter3 chapter4 chapter5

grep Linux book/chapter{1..5} > grep2/grep1.txt

grep Linux book/chapter* > grep2/grep2.txt

# search for the word Linux in chapters 1 through 9 only
grep Linux book/chapter? > grep2/grep3.txt

# search for the word Linux in chapters 10 through 99 only
grep Linux book/chapter?? > grep2/grep4.txt

grep Linux book/chapter[12345] > grep2/grep5.txt

grep Linux book/chapter[1-5] > grep2/grep6.txt

grep Linux book/chapter*[02468] > grep2/grep7.txt

ls -1 /etc/*.conf > grep2/grep8.txt