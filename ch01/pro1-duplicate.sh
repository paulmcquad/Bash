#! /bin/bash

# Program 1 - Detecting Duplicate Files

# Make a directory "pro1"
mkdir -p pro1

ls img > pro1/dup1.txt

# Run checksum on images 001 - 003.jpg
md5sum img/image{001..003}.jpg > pro1/dup2.txt

# cut to isolate the first 32 characters of each line
# sort the lines to make any duplicates adjacent:
md5sum img/*.jpg | cut -c1-32 | sort > pro1/dup3.txt

# uniq to count repeated lines
md5sum img/*.jpg | cut -c1-32 | sort | uniq -c > pro1/dup4.txt

# sort in descending order
md5sum img/*.jpg | cut -c1-32 | sort | uniq -c | sort -nr > pro1/dup5.txt

# grep -v to remove these lines with 1 number output
md5sum img/*.jpg | cut -c1-32 | sort | uniq -c | sort -nr | grep -v "  1 " > pro1/dup6.txt

md5sum img/*.jpg | grep 146b163929b6533f02e91bdf21cb9563 > pro1/dup7.txt

md5sum img/*.jpg | grep 146b163929b6533f02e91bdf21cb9563 | cut -c35- > pro1/dup8.txt