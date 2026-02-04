#! /bin/bash

# Pipelines launch multiple child processes:
# launches six children:

cut -f1 grades.txt \
| sort \
| uniq -c \
| sort -nr \
| head -n1 \
| cut -c9