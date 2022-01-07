#!/bin/bash
echo "insert number of arguments in array"
read n
echo "array is : "
que=0


for (( i=0; i<n; i++ )); do
        arr[i]=$RANDOM
echo ${arr[i]}

        if [[ ${arr[i]} -eq 0 ]]; then
                que=$(($que+1))
        fi

done
echo "the array contains $que arguments with the value 0"

