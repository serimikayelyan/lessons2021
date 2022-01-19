#!/usr/bin/python3

while True:

    c = "c"
    num1 = input("first number: ")
    if num1 == c:
        break
    if not num1.isdigit():
        print("give me integer numbers")
        continue
    oper = input("operation: ")
    if oper == c:
        break
    
    num2 = input("second number: ")
    if num2 == c:
        break
    if not num2.isdigit():
        print("give me integer numbers")
        continue

    if oper == "+":
        print(int(num1) + int(num2))
    elif oper == "-":
        print(int(num1) - int(num2))
    elif oper == "*":
        print(int(num1) * int(num2))
    elif oper == "/":
        print(int(num1) / int(num2))
    else:
        print("nichego ne znayu")
