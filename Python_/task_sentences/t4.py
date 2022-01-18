#!/usr/bin/python3

text = input("Text: ")
count = 0

for i in text:
    if i.isdigit():
        count += 1
print(count)
