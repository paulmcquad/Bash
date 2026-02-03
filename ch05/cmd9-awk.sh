#! /bin/bash

# Make a directory "awk"
mkdir -p awk

less /etc/hosts > awk/awk1.txt

awk '{print $2}' /etc/hosts > awk/awk2.txt

echo Efficient fun Linux | awk '{print $1 $3}' > awk/awk3.txt

echo Efficient fun Linux | awk '{print $1, $3}' > awk/awk4.txt

df / | awk '{print $4}' > awk/awk5.txt

df / | awk ' FNR>1 {print $4}' > awk/awk6.txt

echo efficient:::::linux | awk -F':*' '{print $2}' > awk/awk7.txt