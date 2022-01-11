#!/bin/bash
function sb_str
{
     if [[ $# -eq 0 ]]
       then
	       echo "Input two arguments word and part "
	       exit 1

    
   fi
  
      if [[ "$1" == *"$2"*  ]]; then
            echo true
      else
            echo false
fi


}
sb_str $@
