#!/bin/bash
arr=($@)
count=0
sum=0
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
		  sum=$(($sum+$i))
		  count=$(($count+1))
		  s=`echo $sum/$count | bc`
	else
		echo "the count of odd numbers is 0"
		exit
        fi
done
echo "Mijin tvb=$s"
