#!/bin/bash
arr=(-8 -9 5 -7 -3 -23 -4 -1 -75 -36)
sum=0
for i in ${!arr[@]}
do
	if [[ $i -eq 0 ]]
	 then
		 continue
	fi
	if [[ $i%2 -ne 0 ]]
	then
		sum=$((${arr[i]#-}  + $sum))
		
	fi
done
echo $sum 
