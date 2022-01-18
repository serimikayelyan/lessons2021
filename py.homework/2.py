#!/usr/bin/python3

a = input("Your sentence:")

consonants = "bcdfghjklmnpqrstvwxyz"
count = 0
for i in a:
    if i in consonants:
        count += 1
print(count)

