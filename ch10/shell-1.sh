#! /bin/bash

# Launching Browser Windows from the Command Line

mkdir -p test10

#firefox &
#google-chrome &
#opera &

#firefox https://oreilly.com
#google-chrome https://oreilly.com
#opera https://oreilly.com

#firefox --new-window https://oreilly.com
#google-chrome --new-window https://oreilly.com
#opera --new-window https://oreilly.com

#firefox --private-window https://oreilly.com
#google-chrome --incognito https://oreilly.com
#opera --private https://oreilly.com

cat urls.txt > test10/1.txt

grep music urls.txt | cut -f1

#google-chrome https://$( grep music urls.txt | cut -f1 )

cat packages.txt