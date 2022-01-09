if [[ $1 -gt  $2 ]]; then 
	x=$1
else    x=$2

fi

if [[ $x -gt $3 ]]; then
	echo $4
else    echo $3
fi
