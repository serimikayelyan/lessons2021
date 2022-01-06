#!/bin/bash
arr=(47 2 5 2 6 2 4 2 63 2)
p=1
for i in ${!arr[@]}
do
	if [[ $i -eq 0 ]]
	 then
		 continue
	fi
	if [[ $i%2 -ne 0 ]]
	then
		p=$(($p* $((${arr[i]}*${arr[i]}))))
	fi
done
echo $p
