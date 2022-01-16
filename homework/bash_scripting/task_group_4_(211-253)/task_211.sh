#!/bin/bash

arr=($@)
[[ ${#arr} -eq 0 ]] && echo No argument "(array elements)" && exit

count=0
sum=0

for i in ${arr[@]}; do
    [[ ! $i =~ ^[-0-9]+$ ]] && echo $i is not a number && continue
    if [[ $i -gt 0 ]]; then
	((sum+=$i))
	((count++))
    fi
done

if [[ $count -eq 0 ]]; then
    echo No even number was found
else
    echo $(($sum / $count))
fi
