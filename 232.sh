#!/bin/bash

list=( 2 7 8 2 6 5 4 7 2)
f=0
for i in ${list[@]}
do
	if [[ $i%2 -eq 0 ]]
	then
		f=$(($f+1))
	fi
done
echo $f
