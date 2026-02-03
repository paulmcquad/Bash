#! /bin/bash

# Make a directory "paste"
mkdir -p paste

paste title1.txt title2.txt > paste/paste1.txt

paste title1.txt title2.txt | cut -f2 > paste/paste2.txt

paste -d, title1.txt title2.txt > paste/paste3.txt

paste -d, -s title1.txt title2.txt > paste/paste4.txt

 paste -d "\n" title1.txt title2.txt > paste/paste5.txt