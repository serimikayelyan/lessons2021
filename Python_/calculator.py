#!/usr/bin/python3

import sys

num1 = input("First number is: ")
if not num1.isdigit():
    print("Please enter number.")
    sys.exit()

num2 = input("Second number is: ")
if not num2.isdigit():
    print("Please enter number.")
    sys.exit()

num1 = int(num1)
num2 = int(num2)

symbol = input("Enter the operation version (+, -, *, /): ")
if symbol == "+" or symbol == "-" or symbol == "*" or symbol == "/":
    if symbol == "+":
        print(">>", num1+num2)
    elif symbol == "-":
        print(">>", num1-num2)
    elif symbol == "*":
        print(">>", num1*num2)
    elif symbol == "/":
        print(">>", num1/num2)
else:
    print("Please enter operation version.")
    sys.exit()

