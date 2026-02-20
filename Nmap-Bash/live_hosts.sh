#!/bin/bash

sudo nmap -sn 192.168.0.0/24 -oN scans/alive-hosts.txt
