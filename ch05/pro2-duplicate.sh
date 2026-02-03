#! /bin/bash

# Program 1 - Detecting Duplicate Files

# Make a directory "pro2"
mkdir -p pro2

# Run checksum on images 001 - 003.jpg
md5sum ../ch01/img/image{001..003}.jpg > pro2/dup1.txt

md5sum ../ch01/img/image*.jpg | cut -c1-32 | sort | uniq -c | sort -nr | grep -v "1 " > pro2/dup2.txt

md5sum ../ch01/img/image*.jpg > pro2/dup3.txt

 md5sum ../ch01/img/image*.jpg \
| awk '{counts[$1]++; names[$1]=names[$1] " " $2} \
END {for (key in counts) print counts[key] " " key ":" names[key]}' \
| grep -v '^1 ' \
| sort -nr > pro2/dup4.txt