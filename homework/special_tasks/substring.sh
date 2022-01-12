#!/bin/bash
    
function substring
{   
    
    read -p "text: " text
    read -p "texti mas: " text_mas
    
    for (( i=0; i<( ${#text} - ${#text_mas} ) ; i++ )); do
        if [[ ${text:$i:${#text_mas}} == $text_mas ]]; then
            echo "true"
	    break
	fi
    done
}  

substring 
