#!/usr/bin/python3

text = input("Input text: ")
count = 0
if text != "":
    for i in text:
        if i != " " and i != "," and i != "." and i != ":":
            count+=1
    print (count)
else:
    print("Missing text")
