#! /bin/bash

# One liners

# mv
paste <(echo {1..10}.jpg | sed 's/ /\n/g') \
<(echo {0..9}.jpg | sed 's/ /\n/g') \
| sed 's/^/mv /'

# find .sh files
ls | grep '\.sh$'

echo {A..Z}
echo {1..12}

echo 2026-{02..12}-01 | xargs -n1 date +%B -d