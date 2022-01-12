#! /bin/bash


arr=(1 2 -3 -4 5 6 12 -45 8 52 -16 82 53)
max=-100000000
min=1000000000
for i in ${arr[@]}
do
        if [[ max -lt $i ]]
        then
            max=$i
        fi
        if [[ min -gt $i ]]
        then
            min=$i
        fi
done
        echo $(($max+$min))
