#!/bin/bash
#task_422 not working
: 'declare -A arr
arr[0,0]=25
arr[0,1]=24
arr[0,2]=23
arr[0,3]=22
arr[0,4]=21
arr[1,0]=20
arr[1,1]=19
arr[2,2]=18
arr[1,3]=17
arr[1,4]=16
arr[2,0]=15
arr[2,1]=14
arr[2,2]=13
arr[2,3]=12
arr[2,4]=11
arr[3,0]=10
arr[3,1]=9
arr[3,2]=8
arr[3,3]=7
arr[3,4]=6
arr[4,0]=5
arr[4,1]=4
arr[4,2]=3
arr[4,3]=2
arr[4,4]=1

function task_422 {
	echo -n "Insert k: " 
	read k
	length=5
	sum=0
	n=0
	for ((i=0; i<$length; i++))
	do
		for ((j=0; j<$i; j++))
		do
			if [[ $(( ${arr[$i, $j]} % k )) -eq 0 ]]
			then
				num=${arr[$i, $j]}
				sum=$(($sum + $num))
				n=$(( $n + 1 ))
			fi	
		done
	done
	final=$(($sum/$n))
}
'
function task421 {
	echo -n "Insert m: " 
	read m
	echo -n "Insert k: "
	read k
	declare -A arr

	for ((i=0; i<m; i++))
	do
		for ((j=0; j<m; j++))
		do
			echo -n "Insert arr[$i, $j]: "
			read tmp
			arr[$i, $j]=$tmp
		done
	done

	sum=0
	n=0
	for ((i=0; i<m; i++))
	do
		for ((j=0; j<$i; j++))
		do
			if [[ $(( ${arr[$i, $j]} % k )) -eq 0 ]];then
				num=${arr[$i, $j]}
				sum=$(($sum + $num))
				n=$(($n + 1))
			fi
		done
	done
	final=$(($sum/$n))
	echo $final

}

function task422 {
	echo -n "Insert m: " 
	read m
	declare -A arr

	for ((i=0; i<m; i++))
	do
		for ((j=0; j<m; j++))
		do
			echo -n "Insert arr[$i, $j]: "
			read tmp
			arr[$i, $j]=$tmp
		done
	done

	sum=0
	n=0
	for ((i=0; i<m; i++))
	do
		for ((j=0; j<$i; j++))
		do
			if [[ $(( ${arr[$i, $j]} % 5)) -eq 0 ]];then
				num=${arr[$i, $j]}
				sum=$(($sum + $num))
				n=$(($n + 1))
			fi
		done
	done
	final=$(($sum/$n))
	echo $final
}
#not working syntax error
function task423 {
	echo -n "Insert m: "
	read m

	declare -A arr

	for ((i=0; i<m; i++))
	do
		for ((j=0; j<m; j++))
		do
			echo -n "Insert arr[$i, $j]: "
			read tmp
			arr[$i, $j]=$tmp
		done
	done

	sum=0
	n=0

	for ((i=0; i<m; i++))
	do
		for ((j=0; j<=$i; j++))
		do
			if [[ $(( ${arr[$i, $j]} % 2 )) -eq 0 ]]
			then
				num=${arr[$i, $j]}
				k=$(($num**2))
				sum=$(( $sum + $k ))
				n=$(( $n + 1 ))
			fi
		done
	done
	final=$(($sum / $n))
	bc <<< "scale=2; sqrt($final))"
}

function task424 {
	echo -n "Insert m: "
	read m

	declare -A arr

	for ((i=0; i<m; i++))
	do
		for ((j=0; j<m; j++))
		do
			echo -n "Insert arr[$i, $j]: "
			read tmp
			arr[$i, $j]=$tmp
		done
	done

	sum=0
	n=0

	for ((i=0; i<m; i++))
	do
		for ((j=0; j<=$i; j++))
		do
			if [[ $(( ${arr[$i, $j]} % 2 )) -eq 1 ]]
			then
				num=${arr[$i, $j]}
				sum=$(( $sum + $num ))
				n=$(( $n + 1 ))
			fi
		done
	done
	final=$(($sum/$n))
	echo $final
}

function task425 {
	echo -n "Insert m: "
	read m

	declare -A arr

	for ((i=0; i<m; i++))
	do
		for ((j=0; j<m; j++))
		do
			echo -n "Insert arr[$i, $j]: "
			read tmp
			arr[$i, $j]=$tmp
		done
	done

	n=0

	for ((i=0; i<m; i++))
	do
		for ((j=0; j<$i; j++))
		do
			if [[ $(( ${arr[$i, $j]} % 2 )) -eq 0 ]]
			then
				n=$(( $n + 1 ))
			fi
		done
	done
	echo $n

}

function task429 {
	echo -n "Insert m: " 
	read m

	declare -A arr

	for ((i=0; i<m; i++))
	do
		for ((j=0; j<m; j++))
		do
			echo -n "Insert arr[$i, $j]: "
			read tmp
			arr[$i, $j]=$tmp
		done
	done

	n=0

	for ((i=0; i<m; i++))
	do
		for ((j=0; j<=$i; j++))
		do
			if [[ $(( ${arr[$i, $j]} % 5)) -eq 2 ]];then
				n=$(($n + 1))
			fi
		done
	done
	echo $n
}

function task430 {
	echo -n "Insert m: "
	read m

	declare -A arr

	for ((i=0; i<m; i++))
	do
		for ((j=0; j<m; j++))
		do
			echo -n "Insert arr[$i, $j]: "
			read tmp
			arr[$i, $j]=$tmp
		done
	done

	sum=0
	n=0

	for ((i=0; i<m; i++))
	do
		for ((j=0; j<=$i; j++))
		do
			if [[ $(( ${arr[$i, $j]} % 2 )) -eq 0 ]]
			then
				num=${arr[$i, $j]}
				sum=$(( $sum + $num ))
				n=$(( $n + 1 ))
			fi
		done
	done
	final=$(($sum/$n))
	echo $final
}
#միայն վերև
function task_429 {
	echo -n "Insert m: " 
	read m

	declare -A arr

	for ((i=0; i<m; i++))
	do
		for ((j=0; j<m; j++))
		do
			echo -n "Insert arr[$i, $j]: "
			read tmp
			arr[$i, $j]=$tmp
		done
	done

	n=0

	for ((i=0; i<m; i++))
	do
		for ((j=$i; j>=0; j--))
		do
			if [[ $(( ${arr[$i, $j]} % 5)) -eq 2 ]];then
				n=$(($n + 1))
			fi
		done
	done
	echo $n
}
