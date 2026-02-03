#! /bin/bash

# Make a directory "seq"
mkdir -p seq

seq 1 5 > seq/seq1.txt
seq 1 2 10 > seq/seq2.txt
seq 3 -1 0 > seq/seq3.txt

seq 1.1 0.1 2 > seq/seq4.txt
seq -s/ 1 5 > seq/seq5.txt

seq -w 8 10 > seq/seq6.txt