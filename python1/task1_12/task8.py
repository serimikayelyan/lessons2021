#!/bin/python
sent = input("input sentence: ")
count = 0
max_value = 0
for i in sent:
    if i.isalpha():
        count = sent.count(i)
        if count > max_value:
            max_value = count
            max_use_letter = i
print("Max use letter is ", max_use_letter)

