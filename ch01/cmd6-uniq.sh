#! /bin/bash

# Make a directory "uniq"
mkdir -p uniq

# cat - output all characters to uniq1.txt
cat letters.txt > uniq/uniq1.txt

# uniq - Only unique characters
uniq letters.txt > uniq/uniq2.txt

# uniq - Only unique characters
# -c - count occurrences
uniq -c letters.txt > uniq/uniq3.txt

# cat - output all grades to uniq4.txt
cat grades.txt > uniq/uniq4.txt

# cut field 1 -f1
# sort in ascending order
cut -f1 grades.txt | sort > uniq/uniq5.txt

# cut field 1 -f1
# sort in ascending order
# uniq - Only unique characters
# -c - count occurrences
cut -f1 grades.txt | sort | uniq -c > uniq/uniq6.txt

# sort in descending order
cut -f1 grades.txt | sort | uniq -c | sort -nr > uniq/uniq7.txt

# head - print 1st line
cut -f1 grades.txt | sort | uniq -c | sort -nr | head -n1 > uniq/uniq8.txt

# cut 9th column -c9,
cut -f1 grades.txt | sort | uniq -c | sort -nr | head -n1 | cut -c9