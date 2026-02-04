#! /bin/bash

# Compare Program

# automated solution is to compare the existing filenames
# list of names from 1.jpg to 1000.jpg, using the diff command. 

# Create 1000 jpgs in tmp directory
# Remove 4 and 981
mkdir -p /tmp/jpegs && cd /tmp/jpegs
touch {1..1000}.jpg
rm 4.jpg 981.jpg

# Print all jpg's into a file
ls *.jpg | sort -n > /tmp/original-list.txt

# Count the jpgs that should be listed
# Compare missing original list file with full list
seq 1 1000 | sed 's/$/.jpg/' > /tmp/full-list.txt
diff /tmp/original-list.txt /tmp/full-list.txt

# Clean up
rm /tmp/original-list.txt /tmp/full-list.txt