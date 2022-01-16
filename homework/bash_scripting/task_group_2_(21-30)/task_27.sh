#!/bin/bash

delta=$(($2 - $1))

for ((i=3;i<$(($# + 1));i++)); do
    if [[ ! $((${@:$(($i-1)):1} + $delta)) -eq ${@:$i:1} ]]; then
	echo false
	break
    elif [[ $i -eq $# ]]; then
	echo true
    fi
done
#It turns out $@[0] == $0. It kinda makes sense, but echo $@ prints ($1 $2 $3 ...) but not $0... WT?! 
