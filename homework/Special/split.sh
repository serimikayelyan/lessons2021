#!/bin/bash

read -p 'Enter the sentece: ' sentence
read -p 'Enter a char(Which one do you want to remove): ' char
next=0
IFS="$char"
if [[ $sentence == "" || $char == "" ]]; then
    echo "Ups!! Enter a sentence or char" && exit 1
else
	if [[ ${#char} -gt 1 ]]; then
	    echo "Ups!! Enter one char" && exit 1
        else
	    for i in $sentence; do
	        arr[$next]="$i"
	        next=$(($next+1))
	    done
	fi
fi

echo ${arr[@]}
