#!/bin/bash
arr[0,0]=12
arr[0,1]=24
arr[0,2]=45
arr[1,0]=56
arr[1,1]=17
arr[1,2]=12
arr[2,0]=79
arr[2,1]=23
arr[2,2]=42
#12 24 45
#56 17 12
#79 23 42
count=0
for i in ${arr[@]}
do
	echo ${arr[0,1]}
done
