#!/bin/bash

read -p "k: " k

arr=( $@ )
zero=0

for i in ${!arr[@]}
do
    if [[ $(( $i % $k )) -eq 0 ]]; then
	(( zero += 1 ))
    fi
done
echo $zero
