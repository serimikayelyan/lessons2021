#! /bin/bash


arr=(1 2 -3 -4 5 6 ) 
sum=0
for i in ${arr[@]}
do
        if [[ $(($i%2)) -eq 0 ]]
        then
            sum=$(($sum + $(($i*$i))))
        fi
done
echo $sum
