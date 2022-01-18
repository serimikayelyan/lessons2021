#!/bin/bash 

a=( 55 120 99 3 6 987)
max=0

for k in ${a[@]}
do
	if (( $k > $max ))
	then
		max=$k
	fi
done
echo $max

