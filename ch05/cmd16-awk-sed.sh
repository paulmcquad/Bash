#! /bin/bash

# Make a directory "sed"
mkdir -p sed

sed 10q myfile.txt > sed/sed1.txt
awk 'FNR<=10' myfile.txt > sed/sed2.txt

echo image.jpg | sed 's/\.jpg/.png/' > sed/sed3.txt
echo "linux efficient" | awk '{print $2, $1}' > sed/sed4.txt

awk '{print $NF}' celebrities.txt > sed/sed5.txt
echo efficient linux | awk '/efficient/' > sed/sed6.txt

awk -F'\t' '{print $4, "(" $3 ").", "\"" $2 "\""}' animals.txt > sed/sed7.txt

awk -F'\t' ' /^horse/ {print $4, "(" $3 ").", "\"" $2 "\""}' animals.txt > sed/sed8.txt

awk -F'\t' ' $3~/^201/ {print $4, "(" $3 ").", "\"" $2 "\""}' animals.txt  > sed/sed9.txt

awk -F'\t' \
' BEGIN {print "Recent books:"} \
$3~/^201/{print "-", $4, "(" $3 ").", "\"" $2 "\""} \
END {print "For more books, search the web"} ' \
animals.txt > sed/sed10.txt

seq 1 100 | awk '{s+=$1} END {print s}'> sed/sed11.txt

echo Efficient Windows | sed "s/Windows/Linux/" > sed/sed12.txt

sed 's/.* //' celebrities.txt > sed/sed13.txt

echo Efficient Stuff | sed "s/stuff/linux/" > sed/sed14.txt
echo Efficient Stuff | sed "s/stuff/linux/i" >> sed/sed14.txt


echo efficient stuff | sed "s/f/F/" > sed/sed15.txt
echo efficient stuff | sed "s/f/F/g" >> sed/sed15.txt

seq 10 14 | sed 4d > sed/sed16.txt
seq 101 200 | sed '/[13579]$/d' > sed/sed17.txt
