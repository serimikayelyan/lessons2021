#!/bin/bash

h=0

list=(5 7 3 5 6 4 88 52 66 4 7 )

for i in ${!list[@]}
do
	if [[ $i%2 -eq 0 && $i -ne 0 ]]
	then
		h=$(($h+${list[i]}))
	fi
done
echo $h
