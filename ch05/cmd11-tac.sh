#! /bin/bash

# Make a directory "tac"
mkdir -p tac

cat poem1.txt poem2.txt poem3.txt \
| tac > tac/tac1.txt


tac poem1.txt poem2.txt poem3.txt \
> tac/tac2.txt

