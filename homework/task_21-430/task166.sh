#!/bin/bash

n=$1
y="1"
while true
do
    if [[ $(( $n % 4 )) -eq 0 && $n -gt 1 ]]; then
	(( n /= 4 ))
	if [[ $n -eq 1 ]]; then
	    y="1"
	    echo $y
	    break
	fi
    else 
	y="0"
	echo $y
	break
    fi
done
