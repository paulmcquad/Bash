#! /bin/bash

# Make a directory "cut"
mkdir -p cut

# cut - prints one or more columns from a file.
cut -f2 animals.txt > cut/cut1.txt

# Head - print only the first three lines:
cut -f2 animals.txt | head -n3 > cut/cut2.txt

# cut multiple fields -f, either by separating their field numbers.
cut -f1,3 animals.txt | head -n3 > cut/cut3.txt

# cut multiple fields -f, either by separating by numeric range.
cut -f2-4 animals.txt | head -n3 > cut/cut4.txt

# cut multiple columns -c, either by separating by numeric range.
cut -c1-3 animals.txt > cut/cut5.txt

# cut field 4 -f, author name.
cut -f4 animals.txt > cut/cut6.txt

# cut field 4 -f, author name.
# cut delimiter -d, cut field 1 -f1.
cut -f4 animals.txt | cut -d, -f1