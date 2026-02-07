#! /bin/bash

# 7zip archive multiple files with their respective names
#
# https://unix.stackexchange.com/questions/713947/7zip-archive-multiple-files-with-their-respective-names

# Usage:
# Renamed sega mega drive rom set from .bin to bin.7z to save space.

for i in *.bin; do 7z a -t7z "${i%%.*}.bin.7z" "$i" -mx9 -mmt8 -stl; mv *.bin.7z S; done

# Execute to check hashes;
# sha1sum *.bin.7z > hash.txt;
