#! /bin/bash

# Make a directory "brace"
mkdir -p brace

echo {1..10} > brace/brace1.txt
echo {10..1} >> brace/brace1.txt
echo {01..10} >> brace/brace1.txt

echo {1..1000..100} > brace/brace2.txt
echo {1000..1..100} >> brace/brace2.txt
echo {01..1000..100} >> brace/brace2.txt

echo {A..Z} > brace/brace3.txt
echo {A..Z} | tr -d ' ' >> brace/brace3.txt

echo {A..Z} | tr ' ' '\n' > brace/brace4.txt
