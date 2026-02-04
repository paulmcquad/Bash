#! /bin/bash

cut -f1 grades.txt | sort | uniq -c | sort -nr