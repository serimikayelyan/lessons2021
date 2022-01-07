#!/bin/bash
echo "insert number of arguments in array"
read n
echo "array is : "
max=0


for (( i=0; i<n; i++ )); do
        arr[i]=$RANDOM
echo ${arr[i]}

        if [[ ${arr[i]} -gt $max ]]; then
                max=${arr[i]}
        fi

done
echo " the max value in the massive is $max "
