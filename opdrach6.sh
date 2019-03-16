#!/usr/bin/env 
if [ $1 == "jpg" ]; then
    find . -iname '*.jpg' | xargs -0 -r convert -format png 
elif [ $1 == "png" ]; then
    find . -iname '*.png' | xargs -0 -r convert -format jpg