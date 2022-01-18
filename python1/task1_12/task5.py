#!/bin/python
sent = input("Input sentence- ")
count = 0
for i in range(len(sent)):
    if sent[i].isalnum() == False and sent[i].isspace() == False:
         
        count += 1
print(count)
