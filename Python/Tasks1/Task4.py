#!/usr/bin/python3

sentence = input("Input sentence: ")

count = 0

if len(sentence) > 0:
    for i in sentence:
        if i.isdigit():
            count += 1
    print(count)
else:
    print("Input sentence!")
