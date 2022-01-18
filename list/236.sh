#!/bin/bash

list=( 2 5 8 9 7 4 1 33)
t=1
p=0
for i in ${list[@]}
do
	if [[ $i%2 -ne 0 ]]
	then
		p=$(($p+1))
		t=$(($t*$i))
	fi
done
echo  $p
echo $t

