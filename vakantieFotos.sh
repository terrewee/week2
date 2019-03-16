#!/usr/bin/env bash

mkdir -p ./vakantie/images; #make directory

find $1 -type f -iname '*.png' -o -iname '*.jpg' -exec grep 'vakantie' -exec mv {}  ./vakantie/images  \; #search given location for image files, see if it contains vacation and then move it