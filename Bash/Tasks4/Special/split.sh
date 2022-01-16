#!/bin/bash

read -p 'Word: ' word
read -p 'Spliting by (Enter a char): ' char

arrInd=0

if [[ $word == "" || $char == "" ]]
then
    echo "Give input"
    exit 1
else
	if [[ ${#char} -gt 1 ]]
	then
	    echo "For separating your string"
	    echo "delimiter should be a char, not a word"
	    exit 2
        else
	    IFS="$char"
	    for i in $word
	    do
	        array[$arrInd]="$i"
	        arrInd=$(($arrInd+1))
	    done
	fi
fi

echo ${array[@]}


