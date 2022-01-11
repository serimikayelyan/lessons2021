#1/bin/bash
correcting(){
echo "input text"
read text

echo "input shift number"
read shnum

alfa=( {a..z} )

	if [[ $text == "" ]] || [[ $shnum == "" ]] || [[ $shnum -gt 25 ]]; then
		echo "   !!! incorrect text end/or shift number !!!"
		echo
		correcting
	fi

	if [[ ! $shnum =~ ^[[:digit:]]+$ ]] ; then
		echo  "  !!!! enter number !!!!"
		correcting
	fi
}
correcting
	for ((i=0;i<${#text};i++ ));do 
		txtchar[$i]=${text:$i:1}
		for (( j=0; j<25; j++ )); do	
			if [[ "${txtchar[$i]}" != [a-z]  ]]; then
				enctxtchar[$i]=${txtchar[$i]}
				echo -n ${enctxtchar[$i]}
				break
			fi  	
			if [[ ${txtchar[$i]} == ${alfa[$j]} ]]; then
				enctxtchar[$i]=${alfa[$j+$shnum]}
				echo -n  ${enctxtchar[$i]}
			fi
		done      	  
	done
	echo

