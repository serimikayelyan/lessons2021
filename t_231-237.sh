#!/bin/bash
#task231

myarr=(1 4 5 9 20 25 30 40)
a=0
for i  in ${myarr[@]}
do
if [[ $i%2 -eq 0 ]]
then
a=$(($a+($i*$i)))
fi
done
echo $a

#task232

myarr=(12 8 5 6 42 10 15)
a=0
for i in ${myarr[@]}
do
if [[ $i%2 -eq 0 ]]
then
a=$(($a+1))
fi
done
echo $a


#task233

myarr=(4 7 8 9 11 15 16 20 5)
a=1
b=0
for i in ${myarr[@]}
do
if [[ $i%2 -eq 0 ]]
then 
a=$(($a*$i))
b=$(($b+$i))
fi
done
echo "artadryaln e $a  gumarn e $b"


#task234

myarr=(2 3 8 9 21 7 19)
a=0
b=0
for i in ${myarr[@]}
do 
if [[ $i%2 -ne 0 ]]
then
a=$(($a+$i))
b=$(($b+1))
c=$(($a/$b))
fi
done
echo $c

#task 235

myarr=(1 2 3 4 5 6 7 8)
a=0
b=0
for i in ${myarr[@]}
do
if [[ $i%2 -ne 0 ]]
then
a=$(($a+($i*$i)))
b=$(($b+1))
c=$(($a/$b))
d=`echo "scale=4; sqrt($c)" | bc`
fi 
done
echo $d


#task236

myarr=(3 23 5 10 14 8 7)
a=0
b=1

for i in ${myarr[@]}
do
if [[ $i%2 -ne 0 ]]
then
a=$(($a+1))
b=$(($b*$i))
fi
done
echo "qanak - $a artadryal -$b"


#task 237

myarr=(2 0 5 14 8 9 3  7  9 )
a=0

for i in ${myarr[@]}
do
if [[ $i -eq 0 ]]
then
a=$(($a+1))
fi 
done
echo $a

#task251

myarr=(2 3 5 9 21 5 45 10 588 67)
sort=0

len=${#myarr[@]}


for ((i=0; i<$len; i++))
do
  
  for ((j=i+1; j<$len; j++))
  do
   
   if [[ ${myarr[i]} -le ${myarr[j]} ]]
   then
   continue
   else
    
   sort=${myarr[i]}
   myarr[i]=${myarr[j]}
   myarr[j]=$sort
   fi
  done
done
echo ${myarr[-1]}


#task252

myarr=(5 15 21 23 32 67 90 2 )
sort=0
len=${#myarr[@]}
for ((i=0; i<$len; i++))
do
  for ((j=i+1; j<$len; j++))
  do 
    if [[ ${myarr[i]} -le ${myarr[j]} ]]
    then
    continue
    else
    sort=${myarr[i]}
    myarr[i]=${myarr[j]}
    myarr[j]=$sort
    fi
  done
done
echo ${myarr[0]}



#task253

myarr=(5 4 8 71 16 9 23 2)
sort=0
len=${#myarr[@]}

for ((i=0; i<$len; i++))
do
  for ((j=i+1; j<$len; j++))
  do
  if [[ ${myarr[i]} -le ${myarr[j]} ]]
  then
  continue
  else
  sort=${myarr[i]}
  myarr[i]=${myarr[j]}
  myarr[j]=$sort
  fi
  done
done
res=$((${myarr[0]} +${myarr[-1]}))
echo $res
echo 
