#!/usr/bin/python3

text = input("Text: ")

for i in text:
    if i.lower() == "a" or i.lower() == "o" or i.lower() == "u" or i.lower() == "e" or i.lower() == "i" :
        continue
    else:
        print(i)

