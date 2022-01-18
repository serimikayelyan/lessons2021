#!/usr/bin/python3

while True:
    NUMBER = input("Enter a number: ")
    COUNT = 0
    if NUMBER.isdigit():
        NUMBER = int(NUMBER)
        for i in range(NUMBER + 1):
            if i % 2 == 0:
                COUNT += 1
        print(COUNT)
    elif NUMBER.lower() == "c":
        break
