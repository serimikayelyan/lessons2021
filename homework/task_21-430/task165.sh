#!/bin/bash

n=$1
t="false"

while true
do
    if [[ $(( $n % 3 )) -eq 0 && $n -gt 1 ]]; then
	(( n /= 3 ))
	if [[ $n -eq 1 ]]; then
	    t="true"
	    echo $t
	    break
	fi
    else 
	echo "false"
	break
    fi
done
