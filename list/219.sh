#!/bin/bash

b=(9 2 7 36 12 78 21 )

a=0
for i in ${!b[@]}
do
	if [[ $i%$1 -eq 0  ]]
	then
		a=$(($a+1))
	fi
done
echo $a
