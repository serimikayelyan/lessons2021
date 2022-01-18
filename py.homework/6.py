#!/usr/bin/python3

a = input("Your sentence:")

ab = ""

for i in range(len(a)):
    ab = a[i] + ab
print(ab)
