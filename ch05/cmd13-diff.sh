#! /bin/bash

# Make a directory "diff"
mkdir -p diff

diff file1.txt file2.txt > diff/diff1.txt

diff file1.txt file2.txt \
| grep '^[<>]' > diff/diff2.txt

diff file1.txt file2.txt \
| grep '^[<>]' | cut -c3- > diff/diff3.txt