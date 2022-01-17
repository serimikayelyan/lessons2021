#!/bin/bash
arr=($@)

count=0
mul=1
if [[ ${#arr[@]} -eq 0 ]]
  then
	  echo "Write arguments after filename!!!!"
	  exit
fi
for i in ${arr[@]}
do
	if ! [[ $i =~ ^[[:digit:]]+$ ]]
	 then
		 echo "input numbers"
		 exit
	fi
	if [[ $i%2 -ne 0 ]]
	  then
		  mul=$(($mul*$i))
		  count=$(($count+1))
		  
	fi
done
echo "count=$count
mul=$mul"
