#! /bin/bash

# Make a directory "grep"
mkdir -p grep

cat frost.txt > grep/grep1.txt

grep his frost.txt > grep/grep2.txt

grep -w his frost.txt > grep/grep3.txt

grep -i his frost.txt > grep/grep4.txt

#grep -l his * >  grep/grep5.txt

grep '^[A-Z]' myfile.txt > grep/grep6.txt

grep -v '^$' myfile.txt > grep/grep7.txt

grep 'cookie\|cake' myfile.txt > grep/grep8.txt

grep '.....' myfile.txt > grep/grep9.txt

grep '<.*>' page.html > grep/grep10.html

grep w. frost.txt > grep/grep11.txt

grep 'w\.' frost.txt > grep/grep12.txt

grep -F w. frost.txt > grep/grep13.txt

fgrep w. frost.txt > grep/grep14.txt

cat /etc/passwd > grep/grep15.txt
cat /etc/shells > grep/grep16.txt

cut -d: -f7 /etc/passwd \
| sort -u \
| grep -f /etc/shells -F > grep/grep17.txt