#! /bin/bash

mkdir -p test09

#cat vault.txt

grep sally vault.txt > test09/p1.txt
grep work vault.txt > test09/p2.txt
grep drop vault.txt > test09/p3.txt

