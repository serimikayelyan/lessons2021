#!/bin/bash
echo "insert number of arguments in array"
read n
echo "array is : "
que=0
sum=0

for (( i=0; i<n; i++ )); do
        arr[i]=$RANDOM
echo ${arr[i]}

        if [[ ${arr[i]}%2 -eq 1 ]]; then
                sum=$(($sum+${arr[i]}**2))
                que=$(($que+1))
        fi

done

ave=$(($sum/$que))
bc <<< " scale=2; sqrt($ave) "
#echo "the arithmetic mean of the odd values of the array: $ave"

