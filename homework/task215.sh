#!/bin/bash

arr=()
echo -n "insert n: "
read n
for (( i=0; i<$n; i++ ))
do
	echo -n "Insert number $i: "
	read tmp
	arr+=($tmp)
done

sum=0

for (( i=2; i<$n; i+=2 ))
do 
	sum=$(( ${arr[$i]}+$sum ))
done

echo $sum
