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

mult=1

for (( i=1; i<$n; i+=2 ))
do 
	mult=$(( ${arr[$i]} * ${arr[$i]} * $mult ))
done

echo $mult
