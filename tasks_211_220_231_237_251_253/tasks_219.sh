#!/bin/bash
arr=(1 2 -3 4 -5 6 -7 -8 90 -32 -434 54 -656 6767 -8789 9887 87)
sum=0

for i in ${!arr[@]}; do
        if [[ $i%$1 -eq 0 ]]; then
	 sum=$(($sum+1))

        fi
done
echo $sum


