#!/bin/bash

if [[ ! $# -gt 0 ]]; then
    echo No arguments given
    exit
fi

max=$1

for i in $@; do
    if [[ ! $i =~ ^[0-9]+$ ]]; then
	echo $i is not a number
    elif [[ $i -gt $max ]]; then
	max=$i
    fi
done

echo The greatest number is: $max
