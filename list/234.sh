#!/bin/bash

list=( 5 2 3 2 4 1 8 )
k=0
h=0

for i in ${list[@]}
do
	if [[ $i%2 -ne 0  ]]
	then
		k=$(($k+1))
		h=$(($h+$i))
	fi
done
echo $h
