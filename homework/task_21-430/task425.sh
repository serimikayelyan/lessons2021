#!/bin/bash

count=0
read -p "m: " m
arr=( $@ )

for (( y=0; y<$m; y++ )) ; do
    for (( x=0; x<$m; x++ )) ; do
	(( i= $y * $m + $x ))
	if [[ $y -gt $x && $(( ${arr[$i]} % 2 )) -eq 0 ]]; then
		(( count++ ))
	fi
    done
done
echo $count
