#!/usr/bin/python3

text = input("Text: ")

s = text.split()
max_ = 0
index = 0

while index < len(s):
    if len(s[index]) > max_ :
        max_=len(s[index])
        a = s[index]
    index+=1
print(a)
