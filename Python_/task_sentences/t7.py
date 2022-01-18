#!/usr/bin/python3

text = input("Text: ")

s = text.split()
max_ = len(s[0])
index=0

while index < len(s):
    if len(s[index]) > max_ :
        max_=len(s[index])
        a = s[index]
    index+=1

if max_ == len(s[0]):
    print(s[0])
else:
    print(a)
