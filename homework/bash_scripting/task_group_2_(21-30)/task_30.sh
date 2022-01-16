#!/bin/bash

numbers=($@)

#Reversed bubbles (Just changed -gt to -lt)
for ((i=0;i<$#;i++)); do
    for ((j=0;j<$(($# - 1 - $i));j++)); do
	if [[ ${numbers[$j]} -lt ${numbers[$(($j + 1))]} ]]; then
	    temp=${numbers[$(($j + 1))]}
	    numbers[$(($j + 1))]=${numbers[$j]}
	    numbers[$j]=$temp
	fi
    done
done

echo ${numbers[*]}
