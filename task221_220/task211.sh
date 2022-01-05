#!/bin/bash
arr=(-1 5 78 0 -10 -98 -23 0.2 41 88 -8)
count=0
sum=0
for i in ${#arr[@]}
 do
	 if [[ $i -gt  0 ]]
	   then
		count=$(($count+1))
		sum=$(($sum + $i))
	fi
done
echo "Migin tvabanakan = $(($sum/$count | bc)) "


