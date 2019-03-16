#!/usr/bin/env bash

argument=$1

while :
do
    if [[ -z $2 ]]; then
        break
    else 
        case $2 in
            .*)
                find $argument -type f -iname $2
                shift
                ;;
            *)
                echo invalid file extension
                shift
                ;;
        esac
    fi
done