#!/bin/bash

arr=($@)
[[ ${#arr} -eq 0 ]] && echo No argument "(array elements)" && exit

read -p "input k:" k

count=0

for ((i=1;i<${#arr[@]};i++)); do
    if ! (( $i % $k )); then
	((count++))
    fi
done

echo $count
