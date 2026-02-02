#! /bin/bash

# Make a directory "ls"
mkdir -p ls

# list all programs in /usr/lib
# ls -l /usr/lib > ls/ls1.txt

# d at the beginning of the line
# ls -l /usr/lib | cut -c1

# grep to keep only the lines containing d
# ls -l /usr/lib | cut -c1 | grep d

# Count no of subdirectories "/usr/lib"
ls -l /usr/lib | cut -c1 | grep d | wc -l