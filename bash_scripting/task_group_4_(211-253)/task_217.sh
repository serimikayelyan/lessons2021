#!/bin/bash

arr=($@)
[[ ${#arr} -eq 0 ]] && echo No argument "(array elements)" && exit

prod=1

for i in ${!arr[@]}; do
    [[ ! ${arr[$i]} =~ ^[-0-9]+$ ]] && echo ${arr[$i]} is not a number && continue
    if (( $i % 2 )); then
	((prod*=${arr[$i]} * ${arr[$i]}))
    fi
done

echo $prod
