#!/usr/bin/python3

sentence = input("Input sentence: ")

symbols = ""

for i in range(33, 48):
    symbols += chr(i)

for i in range(58, 41):
    symbols += chr(i)

for i in range(91, 97):
    symbols += chr(i)

for i in range(123, 127):
    symbols += chr(i)

count = 0

if len(sentence) > 0:
    for i in sentence:
        if symbols.find(i) >= 0:
            count += 1
    print(count)
else:
    print("Input sentence!")
