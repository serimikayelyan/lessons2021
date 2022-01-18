#!/usr/bin/python3

text = input("Enter text: ")
count = 0

for i in text:
    if i.isdigit():
        count+=1
print ("There are",count, "digits")

