#! /bin/bash

# Make a directory "find"
mkdir -p find

find /etc -print > find/find1.txt

find . -type f -print > find/find2.txt

find /etc -type f -name "*.conf" -print > find/find3.txt

find . -iname "*.txt" -print > find/find4.txt

find /etc -exec echo @ {} @ ";" > find/find5.txt

find /etc -type f -name "*.conf" -exec ls -l {} ";" > find/find6.txt