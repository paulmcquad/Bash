#!/bin/bash

command=/usr/bin/audacity

if [ -f $command ]
then
    echo "$command is available, let's run it..."
else
    echo "$command is Not available, installing it..."
    #sudo pacman -S audacity
fi