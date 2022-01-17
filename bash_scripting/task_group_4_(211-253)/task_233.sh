#!/bin/bash

arr=($@)
[[ ${#arr} -eq 0 ]] && echo No argument "(array elements)" && exit

prod=1
sum=0

for i in ${arr[@]}; do
    [[ ! $i =~ ^[-0-9]+$ ]] && echo $i is not a number && continue
    if ! (( $i % 2 )); then
	((prod*=$i))
	((sum+=$i))
    fi
done

echo product: $prod, sum: $sum
