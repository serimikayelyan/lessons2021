#!/bin/bash

array=(5 1 -2 -8 3 -74 5 -10 )
sum=0
l=1
k=0
for i in ${array[@]}
do
    if [[ $i -lt 0 ]] 
    then
	    sum=$(($sum+1))
	    l=$(($i*$i))
	    k=$(($k+$l))
    fi
done
echo $(($k/$sum))
