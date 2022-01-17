echo -n "Insert m: "
read m
echo -n "Insert k: "
read k

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

count=0

echo
for ((i=0; i<m; i++))
do
	for ((j=0; j<$i; j++))
	do
		if [[ $(( ${matrix[$i, $j]} % k )) -eq 0 ]]
		then
			count=$(( $count + 1 ))
		fi
	done
done

echo "count = $count"
