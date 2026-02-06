#! /bin/bash

mkdir -p test10

curl https://efficientlinux.com/welcome.html > test10/s2-1.txt


#seq 1 20 | awk '{print "https://efficientlinux.com/images/" $1 ".jpg"}'