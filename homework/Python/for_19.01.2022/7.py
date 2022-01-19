#!/bin/python
text = input("Write your text,please ")
for i in range(len(text)):
    longest = text.split()
    max_value = longest[0]
    for j in longest:
        if len(max_value) < len(j):
            max_value = j
print(max_value)
