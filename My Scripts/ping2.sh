#! /bin/bash

echo "What do you want to check?"
read x

while true
do
  if ping -q -c 2 -W 1 $x > /dev/null; then
    echo "$x is up"
    break
  else
    echo "$x is down"
  fi
sleep 2
done
