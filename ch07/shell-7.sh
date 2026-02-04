#! /bin/bash

mkdir -p test/dir

cd test/dir

# Create the 26 subdirectories
# mkdir {a..z}

# Executing a String Remotely with ssh
ssh myhost.example.com ls > outfile # Creates outfile on local host
ssh myhost.example.com "ls > outfile" # Creates outfile on remote host