#! /bin/bash


arr=(1 2 -3 6 )
a=1
for i in ${!arr[@]}
do  
	if [[ $(($i%2)) -eq 1 ]]
	then
	      a=$(($a* $((${arr[i]}*${arr[i]}))))
	fi
done
	echo $a
