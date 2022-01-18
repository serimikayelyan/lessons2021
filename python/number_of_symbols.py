#!/usr/bin/python3

sentence = input("type a sentence: ")

count = 0

for i in sentence:
    asci = ord(i)
    if (asci < 48 or (asci > 57 and asci < 65) or (asci > 90 and asci < 97) or asci > 122):
         count += 1
print(count)
