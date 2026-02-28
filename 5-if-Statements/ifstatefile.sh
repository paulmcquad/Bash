#!/bin/bash

if [ -f ~/myfile ]
then
    ehco "The file exist."
else
    echo "The file doesn't exist."
fi
