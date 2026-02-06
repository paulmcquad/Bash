#! /bin/bash

mkdir -p test09

whois example.com | less > test09/3.1.txt

whois example.com \
| grep 'Registry Expiry Date:' \
| awk '{print $4}'