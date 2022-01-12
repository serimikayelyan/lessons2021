#! /bin/bash


arr=(1 2 -3 -4 5 6 12 -45 8 52 -16 82 53)
sum=0
for i in ${arr[@]}
do
        if [[ $(($i%2)) -eq 0 ]]
        then
            sum=$(($sum + 1))
        fi
done
echo $sum
