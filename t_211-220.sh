#!/bin/bash
#task_211

myarr=(1 2 3 18 3 21 60)
a=0
b=0
for i in ${myarr[@]}
do

if [[ $i -gt 0 ]]
then
a=$(($a+1))
b=$(($b+$i))
c=$(($b/$a))
fi
done
 
echo $c

#task213


myarr=(-5 -2 6 -7 11 -30)
a=0
b=0
for i in ${myarr[@]}
do

if [[ $i -lt 0 ]]
then 
a=$(($a+1))
b=$(($b+($i*$i)))
c=$(($b/$a))

fi
done
d=`echo "scal=4; sqrt($c)" | bc`
echo $d


#task215

myarr=(1 5 8 41 24 50 3 56 5)
a=0
for i in ${!myarr[@]}
do
if [[ $i%2 -eq 0 && $i -ne 0 ]]
then
a=$(($a+${myarr[i]}))
fi
done
echo $a

#task217

myarr=(1 5 8 15 6 9 4)
a=1
for i in ${!myarr[@]}
do
if [[ $i%2 -ne 0 && $i -ne 0 ]]
then
b=$((${myarr[i]}*${myarr[$i]}))
a=$(($a*$b))
fi
done
echo $a

#task219(dasin einq grel)

myarr=(2 4 12 36 60 80 50 44)
a=0
for i in ${!myarr[@]}
do
if [[ $i%$1 -eq 0 && $i -ne 0 ]]
then
a=$(($a+1))
fi
done
echo $a
