#!/bin/bash
echo "insert number of arguments in array"
read n
sum=0
for (( i=0; i<=n; i++ )); do
        arr[i]=$RANDOM
echo ${arr[i]}

        if [[ ${arr[i]}%2 -eq 0 ]]; then
                sum=$(($sum+1))
        fi

done
echo $sum

