#!/bin/bash

arr=()
echo -n "insert n: "
read n
for (( i=0; i<$n; i++ ))
do
	echo -n "Insert number $(( $i+1 )): "
	read tmp
	arr+=($tmp)
done

sum=0
count=0

for i in ${arr[*]}
do 
	if [[ $i -gt 0 ]]
	then
		sum=$(( $i+$sum ))
		count=$(( $count+1 ))
	fi
done

if [[ $count -ne o ]]
then
	echo "scale=3; $sum/$count" | bc
else
	echo 0
fi
