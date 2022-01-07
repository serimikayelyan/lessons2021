#!/bin/bash
echo "insert number of arguments in array"
read n
echo "array is : "
max=0
min=32767

for (( i=0; i<n; i++ )); do
        arr[i]=$RANDOM
echo ${arr[i]}
        
        if [[ ${arr[i]} -gt $max ]]; then
                max=${arr[i]}
	
	elif [[ ${arr[i]} -lt $min ]]; then 
	  min=${arr[i]}
fi
done
sum=$(($max+$min))
echo  " the sum of min and max value in the massive is: $sum"
