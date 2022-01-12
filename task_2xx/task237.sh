#! /bin/bash


arr=(1 2 -3 0 5 6 12 0 45 8 52 -16 82 53)
sum=0
for i in ${arr[@]}
do
        if [[ $i -eq 0 ]]
        then
            sum=$(($sum + 1))
        fi
done
echo $sum
