#! /bin/bash

# Make a directory "fs"
#mkdir -p fs

cd
ls -d */ && (ls -d */*/ \
| cut -d/ -f2-) \
| sort \
| uniq -c \
| sort -nr \
| less
