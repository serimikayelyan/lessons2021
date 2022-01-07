#!/bin/bash
arr=(1 2 -3 4 -5 6 -7 -8 90 -32 -434 54 -656 6767 -8789 9887 87)
sum=0
quantity=0
for i in ${!arr[@]}; do
	if [[ ${arr[$i]} -gt 0 ]];then
		sum=$(($sum+${arr[$i]}))
		quantity=$(($quantity+1))
	fi
done 
ave=$(($sum / $quantity))
echo $ave


