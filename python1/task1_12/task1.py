#!/bin/python
sent=input("Enter sentence-")
count = 0
for i in range(len(sent)):
    if sent[i].isalpha() == True and sent[i].isspace() == False:
        
        count += 1
        
print("Count of letters is = ", count)

