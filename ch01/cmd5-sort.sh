#! /bin/bash

# Make a directory "sort"
mkdir -p sort

# Lines of a file into ascending order 
sort animals.txt > sort/sort1.txt

# lines of a file into descending order
sort -r animals.txt > sort/sort2.txt

#cut -f3 animals.txt

# cut the third field in animals.txt
# sort in ascending order
cut -f3 animals.txt | sort -n > sort/sort3.txt

# cut the third field in animals.txt
# sort in descending order
cut -f3 animals.txt | sort -nr > sort/sort4.txt

# cut the third field in animals.txt
# sort in descending order
# head print the first line
cut -f3 animals.txt | sort -nr | head -n1 > sort/sort5.txt

# head print the first 5 lines
head -n5 /etc/passwd > sort/sort6.txt

# head print the first 5 lines
# cut delimiter -d, cut field 1 -f1
head -n5 /etc/passwd | cut -d: -f1 > sort/sort7.txt

# head print the first 5 lines
# cut delimiter -d, cut field 1 -f1
# sort ascending order
head -n5 /etc/passwd | cut -d: -f1 | sort > sort/sort8.txt

# cat list all usernames
# cut delimiter -d, cut field 1 -f1
# sort ascending order
cat /etc/passwd | cut -d: -f1 | sort > sort/sort9.txt