#! /bin/bash

# Make a directory "rerun"
mkdir -p rerun

# Rerunning Commands

md5sum ../ch01/img/*.jpg \
| cut -c1-32 \
| sort \
| uniq -c \
| sort -nr > rerun/rerun1.txt


echo Efficient Linux

# History Expansion -pg 39 - 41

# !grep
# !?grep?
# history | grep hosts