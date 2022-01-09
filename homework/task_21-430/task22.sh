if [[ $1 -gt $2 ]]; then 
	x=$2
else    x=$1
fi 

if [[ $x -gt $3 ]]; then
        echo $3
else    echo $x
fi


