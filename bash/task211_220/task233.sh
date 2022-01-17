arr=($@)
sum=0
mul=1
if [[ ${#arr[@]} -eq 0 ]]
then
	echo "Write arguments after filename!!!!"
	exit
fi
for i in ${arr[@]}
 do
	 if ! [[ $i =~ ^[[:digit:]]+$ ]]
	 then
		 echo "input numbers"
		 exit 
	 fi
	 if [[ $i%2 -eq 0 ]]
	   then
		   sum=$(($sum+$i))
		   mul=$(($mul*$i))
	  fi
done
echo "sum=$sum
mul=$mul"
