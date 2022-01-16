#!/bin/bash

arr=($@)
[[ ${#arr} -eq 0 ]] && echo No argument "(array elements)" && exit

count=0
sq_sum=0

for i in ${arr[@]}; do
    [[ ! $i =~ ^[-0-9]+$ ]] && echo $i is not a number && continue
    if [[ $i -lt 0 ]]; then
	((sq_sum+=$i * $i))
	((count++))
    fi
done

if [[ $count -eq 0 ]]; then
    echo No negative number was found
else
    bc <<< "scale=2; sqrt($sq_sum / $count)"
fi
