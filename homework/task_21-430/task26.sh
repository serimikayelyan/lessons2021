if [[ $(($1 % 2)) -eq 0 ]]; then
    echo "1"

elif [[ $(($2 % 2)) -eq 0 ]]; then
    echo "1"

elif [[ $(($3 % 2)) -eq 0 ]]; then
    echo "1"
else 
    echo "2"
fi
