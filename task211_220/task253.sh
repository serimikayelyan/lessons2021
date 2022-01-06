#!/bin/bash
arr=($@)
max=${arr[0]}
min=${arr[0]}
eq=${arr[0]}
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
	 if [[ $i -ge $max  ]]
	  then
		  max=$i
		 
		 # sum=$(($max+$min))
	
	  elif [[ $i -lt $min ]]
	  then
		min=$i
                 sum=$(($min+$max))
	   
		  
	  
	fi
done
echo $sum
