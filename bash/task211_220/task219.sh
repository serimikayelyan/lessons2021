#!/bin/bash
arr=(4 78 5 9 -6 32 59 -8 7)
count=0
for i in ${!arr[@]}
do
	if [[ $i -eq 0 ]]
	 then
		 continue
	fi
	if [[ $i%$1 -eq 0 ]]
	 then
	 	 count=$(($count + 1))
	fi
done
echo $count
