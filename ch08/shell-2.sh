#! /bin/bash

# One liners

mkdir -p linemv

#seq -w 10 -1 3 | sed 's/\(.*\)/ch\1.asciidoc/'

paste <(seq -w 10 -1 3 | sed 's/\(.*\)/ch\1.asciidoc/') \
<(seq -w 11 -1 4 | sed 's/\(.*\)/ch\1.asciidoc/') \
| sed 's/^/mv /' \
| cat > linemv/mv.txt