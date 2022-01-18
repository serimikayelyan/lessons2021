#!/usr/bin/python3

text = input("Text: ")
count = 0

for i in text:
    if i.isalpha() :
        count+=1

print(count)
