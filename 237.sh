#!/bin/bash

list=(0 2 5 8 7 8 9 6 0 0 0 10)
x=0
for u in ${list[@]}
do
	if [[ $u -eq 0  ]]
	then
		x=$(($x+1))
	fi
done
echo $x
