#! /bin/bash

#mkdir -p shell5

mkdir -p /tmp/jpegs && cd /tmp/jpegs
touch {1..1000}.jpg
rm 4.jpg 981.jpg

diff <(ls *.jpg | sort -n) <(seq 1 1000 | sed 's/$/.jpg/') \
| grep '>' | cut -c3-