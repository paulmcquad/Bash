#!/bin/bash

command=audacity

if command -v $command 
then
    echo "$command is available, let's run it..."
else
    echo "$command is Not available, installing it..."
    sudo pacman -S $command
fi