#! /bin/bash

ls -l | cut -c36-41 | sort | uniq > date.txt

while IFS= read -r dir; do
  mkdir -p "$dir"
done < date.txt
