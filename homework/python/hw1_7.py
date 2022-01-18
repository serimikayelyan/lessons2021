#!/usr/bin/python3.8


sent = input("Enter sentence: ")

longword = max(sent.split(), key=len)

print("Long word is: ", longword)


