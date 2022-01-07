#!/bin/bash

list=( 2 5 1 6 4 7 8 9 5 2 3 )
k=0

for i in ${list[@]}
do
    if [[ $i%2 -eq 0 ]]
    then

	    f=$(($i*$i))
	    k=$(($k+$f))
	fi
done
echo $k
