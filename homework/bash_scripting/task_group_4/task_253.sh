#!/bin/bash

arr=($@)
[[ ${#arr} -eq 0 ]] && echo No argument "(array elements)" && exit

for i in ${arr[@]}; do
    [[ ! $i =~ ^[-0-9]+$ ]] && echo $i is not a number && continue
    if [[ $i -gt $max || ! ${max:-""} ]]; then
	max=$i
    fi
    if [[ $i -lt $min || ! ${min:-""} ]]; then
	min=$i
    fi
done

echo $(($max + $min))
