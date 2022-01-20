#!/usr/bin/python3

import sys

while True:
    while True:
        num1 = input("First number is: ")
        if num1.lower() == "c":
            print("Exit.")
            sys.exit()
        if not num1.isdigit():
            print("Please enter number.")
            break

       
        num2 = input("Second number is: ")
        if num2.lower() == "c":
            print("Exit.")
            sys.exit()
        if not num2.isdigit():
            print("Please enter number.")
            break

        num1 = int(num1)
        num2 = int(num2)

        symbol = input("Enter the operation version (+, -, *, /): ")
        if symbol.lower() == "c":
            print("Exit")
            sys.exit()
        if symbol == "+" or symbol == "-" or symbol == "*" or symbol == "/":
            if symbol == "+":
                print(">>", num1+num2)
            elif symbol == "-":
                print(">>", num1-num2)
            elif symbol == "*":
                print(">>", num1*num2)
            elif symbol == "/":
                if num1 == 0 and num2 == 0:
                    print("0/0 տեսքի անորոշություն")
                elif num2 == 0:
                    print("The number is not divisible by 0")
                elif not num2 == 0:
                    print(">>", num1/num2)
        else:
            print("Please enter operation version.")
            break

