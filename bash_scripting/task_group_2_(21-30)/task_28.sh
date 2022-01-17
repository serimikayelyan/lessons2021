#!/bin/bash

[[ $1 -eq 0 ]] && echo \$1 == 0. Division by zero is not defined && exit || ratio=$(($2 / $1))

for ((i=3;i<$(($# + 1));i++)); do
    if [[ ! $((${@:$(($i-1)):1} * $ratio)) -eq ${@:$i:1} ]]; then
	echo false
	break
    elif [[ $i -eq $# ]]; then
	echo true
    fi
done
