#!/bin/bash
arr=($@)      
max=${arr[0]}
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
	 if [[ $i -ge $max ]]
	  then
		  max=$i
	fi
done
echo $max
