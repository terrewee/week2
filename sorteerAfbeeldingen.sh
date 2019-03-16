#!/usr/bin/env bash

mkdir -p ./images; #make directory images in folder

find . -f -iname '*.png' -o -iname '*.jpg' -exec mv {}  ./images  \; # find .png or .jpg files and execute a move to the image folder we made