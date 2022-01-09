if [[ $(($1 + $2)) -gt $3 && $(($1 + $3)) -gt $2 && $(( $2 + $3)) -gt $1 ]]; then
	echo "ka aydpisi erankyun"
else	echo "chka aydpisi erankyun"
fi
