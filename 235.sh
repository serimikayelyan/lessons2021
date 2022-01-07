#!/bin/bash

list=(2 5 3 6 7 8 9 4 1)
o=0

for i in ${list[@]}
do
	if [[ $i%2 -ne 0 ]]
	then
		o=$(($o+1))
		w=$(($*$i))
	fi
done
echo $w
