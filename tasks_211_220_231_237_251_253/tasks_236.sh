#!/bin/bash
echo "insert number of arguments in array"
read n
echo "array is : "
que=0
mult=1

for (( i=0; i<n; i++ )); do
        arr[i]=$RANDOM
echo ${arr[i]}

        if [[ ${arr[i]}%2 -eq 1 ]]; then
               mult=$(($mult*${arr[i]}))
                que=$(($que+1))
        fi

done
echo
echo
echo $mult
echo $que
