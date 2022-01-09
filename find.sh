for i in $1/
do
	if [[ -n "$i" ]]; then
		if [[ -n "$2" ]]; then
			result=`ls -Rp $i | grep -v / | grep "$2"`
			if [[ -n $result ]]; then
				echo "`realpath $result`"
			else
				echo "File does not exist"
			fi
		else
			echo "Enter the file name"
		fi
	else
		echo "Enter the path name"
	fi
done
