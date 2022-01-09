#!/bin/bash

arr=(  )
alph=( a b c d e f j )

read -p "input text " text
for (( i=0; i<${#text}; i++ )); do
	arr+=( ${text:$i:1} )
done

for a in ${arr[@]}; do
    if [[ $a == ${alph[@]} ]]; then
	
    fi
done
