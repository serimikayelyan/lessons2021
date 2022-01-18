#!/bin/python
count = 0
while True:
    str = input("input numbers- ")
    if str.lower() == 'c':
        break
    if str.isdigit():
        str = int(str)
        if str % 2 == 0:
            count += 1
            print("The count of even numbers is = ", count)
        else:
            print("This is an odd number")
