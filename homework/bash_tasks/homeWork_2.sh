#!/bin/bash

#Task 21
: '
maxNum=$1
for i in $@; do
    if [[ ! $i =~ ^[0-9]+$ ]]; then
	echo NaN
	break
    elif [[ $i -gt $maxNum ]]; then
	maxNum=$i
    fi
done
echo $maxNum ' 

#Task 22
: '
minNum=$1
for i in $@; do
    if [[ ! $i =~ ^[0-9]+$ ]]; then
	echo NaN
	break
    elif [[ $i -lt $minNum ]]; then
	minNum=$i
    fi
done
echo $minNum ' 

#Task 23
: '
if [[ $1 == "1" || $2 == "1" || $3 == "1" ]]; then
	echo true
else 
	echo false
fi ' 

#Task 24
: '
if [[ $1 == "2" && $2 == "2" || $1 == "2" && $3 == "2" || $2 == "2" && $3 == "2" ]]; then
	echo true
else
	echo false
fi ' 

#Task 25
: '
if [[ $1+$2 -gt $3 || $1+$3 -gt $2 || $2+$3 -gt $1 ]]; then
	echo y=1
else 
	echo y=2
fi '

#Task 26
: '
if [[ $1%2 -eq 0 || $2%2 -eq 0 || $3%2 -eq 0 ]]; then
	echo 1
else
	echo 2
fi '

#Task 27
: '
if [[ $2-$1 -eq $3-$2 ]]; then 
	echo true
else 
	echo false
fi '

#Task 28
: '
if [[ $2/$1 -eq $3/$2 ]]; then 
	echo true
else 
	echo false
fi '

#Task 29
: '
arr=($1 $2 $3)
l=${#arr[@]}-1

flag=1;
for (( i = 0; i < $l-1; i++ ))
do
    flag=0;
    for ((j = 0; j < $l-1-$i; j++ ))
    do
        if [[ ${arr[$j]} -gt ${arr[$j+1]} ]]
        then
            temp=${arr[$j]};
            arr[$j]=${arr[$j+1]};
            arr[$j+1]=$temp;
            flag=1;
        fi
    done

    if [[ $flag -eq 0 ]]; then
          break;
    fi
done
echo ${arr[*]} '

#Task 30
: '
arr=($1 $2 $3)
l=${#arr[@]}-1
flag=1;
for (( i = 0; i < $l-1; i++ ))
do
    flag=0;
    for ((j = 0; j < $l-1-$i; j++ ))
    do
        if [[ ${arr[$j]} -gt ${arr[$j+1]} ]]
        then
            temp=${arr[$j]};
            arr[$j]=${arr[$j+1]};
            arr[$j+1]=$temp;
            flag=1;
        fi
    done

    if [[ $flag -eq 0 ]]; then
          break;
    fi
done
#used the Internet
min=0
max=$(( ${#arr[@]} -1 ))

while [[ min -lt max ]]
do
    x="${arr[$min]}"
    arr[$min]="${arr[$max]}"
    arr[$max]="$x"
    (( min++, max-- ))
done

echo ${arr[@]} ' 
