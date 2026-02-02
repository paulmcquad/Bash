#! /bin/bash

# Make a directory "cat"
mkdir -p cat

# Error
#cat Efficient Linux Tips.txt

cat 'Efficient Linux Tips.txt'
cat "Efficient Linux Tips.txt"
cat Efficient\ Linux\ Tips.txt

echo "Notice that $HOME is evaluated"
echo 'Notice that $HOME is not'

echo "The value of \$HOME is $HOME"
echo 'The value of \$HOME is $HOME'