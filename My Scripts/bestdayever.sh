#!/bin/bash

#echo "What is your name?"
#read name

name=$1
compliment=$2

user=$(whoami)
date=$(date)
whereami=$(pwd)

echo "Good morning $name!!"
echo "You're looking good today $name!!"
echo "You have the best $compliment I've ever seen $name!!"

echo "You're currently logged in as $user \
and you're in the directory $whereami. Also \
today is $date." 