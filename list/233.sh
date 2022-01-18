#!/bin/bash

list=( 2 3 1 4 5 6 9 8 7 20)
k=0
f=1
for i in ${list[@]}
do
	if [[ $i%2 -eq 0 ]]
	then
		a=$(($a+$i))
		f=$(($f*$i))
	fi
done
echo $a
echo $f

