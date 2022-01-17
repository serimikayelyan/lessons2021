#!/usr/bin/python3

sentence = input("type a sentence: ")
count = 0

for i in sentence:
    if i.isalpha():
        count += 1

print(count)
