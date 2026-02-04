#! /bin/bash

# One liners

(cd && ls -d */) | sed 's/^/$HOME\//g'