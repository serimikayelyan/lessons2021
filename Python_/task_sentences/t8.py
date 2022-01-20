#!/usr/bin/python3

text = input("Text: ")
max_ = 0
countt = 0
index = 0
a = 0  
while index < len(text):
    countt = text.count(text[index])
    if countt > max_ :
        max_ = countt
        a = text[index]
    index+=1
print(a, "used_", max_)
