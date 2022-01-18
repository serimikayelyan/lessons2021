#!/usr/bin/python3


count = 0
while True:
    num = input("Number: ")
    if num.lower() == "c":
        break
    elif not num.isdigit():
        print("Please enter number: ")

    elif num.isdigit():
        num = int(num)
        if num % 2 == 0:
            count+=1
        print(count)

