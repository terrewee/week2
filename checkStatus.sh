#!/usr/bin/env 

if ! find -iname "dank" -exec mv {} ./dank; then
    echo command returned false >> danklog.txt
else
    echo command returned true >> danklog.txt
fi