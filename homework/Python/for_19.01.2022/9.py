#!/usr/bin/python3


count = 0
while True:
    number = input("Write number,please: ")
    if number.lower() == "c":
        break
    elif number.isdigit():
        number = int(number)
        if number % 2 == 0:
            print("The count of even numbers is = ", count)
        else:
            print("This is an odd number")
