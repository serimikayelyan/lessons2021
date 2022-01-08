echo -n "Insert m: "
read m

declare -A matrix

for ((i=0; i<m; i++))
do
	for ((j=0; j<m; j++))
	do
		echo -n "Insert matrix[$i, $j]: "
		read tmp
		matrix[$i, $j]=$tmp
	done
done

echo; echo "*** Matrix ***"
for ((i=0; i<m; i++))
do
	for ((j=0; j<m; j++))
	do
		printf "%d\t" ${matrix[$i, $j]}
	done
	echo
done
echo "***************"

sum=0
cnt=0

echo
for ((i=0; i<m; i++))
do
	for ((j=0; j<$i; j++))
	do
		if [[ $(( ${matrix[$i, $j]} % 5 )) -eq 0 ]]
		then
			sum=$(( $sum + ${matrix[$i, $j]} ))
			cnt=$(( $cnt + 1 ))
		fi
	done
done

echo "scale=2; $sum / $cnt" | bc
