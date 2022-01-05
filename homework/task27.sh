if [[ $(($3 - $2)) -eq $(($2 - $1)) ]]; then
    echo "true"
else
    echo "false"
fi
