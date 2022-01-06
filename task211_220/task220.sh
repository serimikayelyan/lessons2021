#!/bin/bash
arr=(-7 78 -5 6 9 3 -2 1 -77 51 -96)
positive=0
negative=0
for i in ${arr[@]}
do
	if [[ $i -gt 0 ]]
	 then
		 positive=$(($positive+1))
	else
		negative=$(($negative +1))
	fi
	
done
echo "positives=$positive
negatives=$negative"
      
     
