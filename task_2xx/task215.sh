#! /bin/bash


arr=(1 2 -3 -4 5 6 12 -45 8 52 -16 82 53)
a=0
for i in ${!arr[@]}
do  
	if [[ $(($i%2)) -eq 0 ]]
	then
	    a=$(($a+${arr[$i]}))
	fi
done
	echo $a
