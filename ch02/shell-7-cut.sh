#! /bin/bash

cut -f1 grades.txt \
| sort \
| uniq -c \
| sort -nr \
| head -n1 \
| cut -c9