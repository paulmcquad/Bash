#! /bin/bash

mkdir -p test09

cut -d: -f1 /etc/passwd | sort > test09/s1-1.txt

awk -F: '$3>=1000 {print $1}' /etc/passwd > test09/s1-2.txt

awk -F: '$3>=1000 {print $1}' /etc/passwd \
| xargs -I@ echo "Hi there, @!" > test09/s1-3.txt

 awk -F: '$3>=1000 {print $1}' /etc/passwd \
| xargs -I@ echo 'echo "Hi there, @!" | mail -s greetings @' > test09/s1-4.txt 

