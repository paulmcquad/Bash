#! /bin/bash

# backup copy of a file for safekeeping
# modified the original
# deleted the backup when done

cp myfile.txt myfile.safe \
&& nano myfile.txt \
&& rm myfile.safe