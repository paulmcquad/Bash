#! /bin/bash

# Make a directory "fold"
mkdir -p fold

# wrap 10 lines
fold -w10 poem1.txt > fold/fold1.txt

#man -k width