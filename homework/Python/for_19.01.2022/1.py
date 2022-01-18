#!/usr/bin/python3

count = 0
string = input("Write your text,please:")
for i in string:
    if i.isalpha(): 
         count += 1        
print("Count of letters is = ", count)

