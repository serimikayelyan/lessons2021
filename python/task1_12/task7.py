#!/bin/python
sent = input("input sentence- ")
for i in range(len(sent)):
    longest = sent.split()
    max_value = longest[0]
    for j in longest:
        if len(max_value) < len(j):
            max_value = j
print(max_value)
