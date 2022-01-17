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
 
