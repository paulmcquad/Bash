#! /bin/bash

mkdir -p test09

grep -w NJ areacodes.txt > test09/s4-1.txt
grep -w 202 areacodes.txt > test09/s4-2.txt
grep Washing areacodes.txt > test09/s4-3.txt

wc -l areacodes.txt > test09/s4-4.txt

cut -f2 areacodes.txt \
| sort \
| uniq -c \
| sort -nr \
| head -n1  > test09/s4-5.txt



awk -F'\t' '{printf "%s,%s,\"%s\"\n", $1, $2, $3}' areacodes.txt \
> areacodes.csv
head -n3 areacodes.csv > test09/s4-6.txt

awk '$2~/^NJ$/{ac=ac FS $1} END {print "NJ:" ac}' areacodes.txt > test09/s4-7.txt


awk '{arr[$2]=arr[$2] " " $1} \
END {for (i in arr) print i ":" arr[i]}' areacodes.txt \
| sort  > test09/s4-8.txt