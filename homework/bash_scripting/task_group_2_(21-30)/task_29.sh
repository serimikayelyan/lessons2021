#!/bin/bash

numbers=($@)

#BUBBLES!!
for ((i=0;i<$#;i++)); do
    for ((j=0;j<$(($# - 1 - $i));j++)); do
	if [[ ${numbers[$j]} -gt ${numbers[$(($j + 1))]} ]]; then
	    temp=${numbers[$(($j + 1))]}
	    numbers[$(($j + 1))]=${numbers[$j]}
	    numbers[$j]=$temp
	fi
    done
done
#No more bubbles :((((
echo ${numbers[*]}
