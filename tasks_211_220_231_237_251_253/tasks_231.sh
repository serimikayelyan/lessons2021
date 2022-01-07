#!/bin/bash
echo "insert number of arguments in array"
read n
sum=0
for (( i=0; i<=n; i++ )); do
        arr[i]=$RANDOM

	
	if [[ ${arr[i]}%2 -eq 0 ]]; then
		n=$((${arr[i]}**2))
		sum=$(($sum+$n))
	fi

done
echo $sum
