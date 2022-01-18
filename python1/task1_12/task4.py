#!/bin/python
sent = input("input sentence- ")
count = 0
for i in range(len(sent)):
    if sent[i].isdigit() == True and  sent[i].isspace() == False:
            count += 1
print("Count of digit is = ", count)

