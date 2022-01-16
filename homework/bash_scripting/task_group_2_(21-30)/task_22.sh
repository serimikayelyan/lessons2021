#!/bin/bash

if [[ ! $# -gt 0 ]]; then
    echo No arguments given
    exit
fi

min=$1

for i in $@; do
    if [[ $i =~ ^[0-9]+$ ]]; then
	[ $i -lt $min ] && min=$i
    else
	echo $i is not a number
    fi
done

echo The smallest number is: $min
