#! /bin/bash


arr=(1 2 -3 -4 5 6 12 45 8 52 16 82 53)
a=0
b=0
for i in ${arr[@]}
do 
       echo $i

	if [[ $i -lt 0 ]]
	then
	    a=$(($a+($i)\*($i)))
	    b=$(($b+1))
	fi
done
if [[ $b -ne 0 ]]
then
        echo $a / $b | bc -l
else 
	echo 0
fi
