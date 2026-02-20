#!/bin/bash

sudo nmap -p 53,80,4545,5431,7459,31337,49162,49163,49164 -sV 192.168.0.1 -oA enum/service_enum-192.168.0.1