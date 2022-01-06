arr=($@)
count=0
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
		   count=$(($count+1))
	  fi
done
echo "count="$count
