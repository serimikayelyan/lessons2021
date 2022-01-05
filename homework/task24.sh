if [[ $1 -eq 2 && $2 -eq 2 ]]; then
	echo "true"

elif [[ $1 -eq 2 && $3 -eq 2 ]]; then
	echo "true"

elif [[ $2 -eq 2 && $3 -eq 2 ]]; then
	echo "true"
else    echo "false"
fi
