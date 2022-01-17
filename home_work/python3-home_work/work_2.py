#!/usr/bin/python3

# Calculator version 1

import sys

num1 = input("Enter first number : ")

if not num1.isdigit():
    print("error (first number) -> enter only number")
    sys.exit()

num2 = input("Enter second number : ")

if not num2.isdigit():
    print("error (second number) -> enter only number")
    sys.exit()

num1 = int(num1)
num2 = int(num2)

print("The input will be accepted only with the version number")

print("1. add (+)")
print("2. subtract (-)")
print("3. multiple (*)")
print("4. divide (/)")

opr = input("Enter the operation version : ")

if not opr.isdigit():
    print("error -> enter only number")
    print("warning -> only by the number you can choose the option")
    sys.exit()

if opr == "1":
    print(num1 + num2)
elif opr == "2":
    print(num1 - num2)
elif opr == "3":
    print(num1 * num2)
elif opr == "4":
    print(num1 / num2)
else:
    print("error : non-existent version")
