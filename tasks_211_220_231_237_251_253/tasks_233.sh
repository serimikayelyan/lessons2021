#!/bin/bash
echo "insert number of arguments in array"
read n
echo "array is : "
mult=1
sum=0
for (( i=0; i<n; i++ )); do
        arr[i]=$RANDOM
echo ${arr[i]}

        if [[ ${arr[i]}%2 -eq 0 ]]; then
                sum=$(($sum+${arr[i]}))
		mult=$(($mult*${arr[i]}))
        fi

done
echo "the sum of the even numbers in the array: $sum"
echo " the inproduct of the even numbers in the array: $mult "

