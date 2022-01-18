#!/usr/bin/python3

count = 0 
while True:
    number = input("enter number: ")
    if number == "c":
        break
    elif number.isdigit():
        if int(number) % 2 == 0:
            count += 1
        print( count)
