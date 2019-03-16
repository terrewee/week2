#!/usr/bin/env bash

find . -iname '*.jpg' -exec convert {} -resize 128x128\> {}

find -iname '*.jpg' | xargs -0 -r convert -format png -resize 128x128