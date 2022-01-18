#!/bin/bash
text=( Text messaging, or texting, is the act of composing and sending electronic messages, typically consisting of alphabetic and numeric characters, between two or more users of mobile devices, desktops/laptops, or another of compatible computer. Text messages may be sent over a cellular network, or may also be sent via an Internet connection. )
text1=( )
count=0
for i in ${text[@]}; do
	for ((j=0;j<${#i};j++)); do
	    echo "${i:$j:1}"
	    count=$(($count+1))
	    if [[ $count%5 -eq 0 ]]; then
		    text1+="Z"
		echo "I" $i
	    else
		text1+=($j)
	    fi

#	echo $count
        done
done
echo $text1
