#!/usr/bin/python3.8

while True:
    a = input("input a number: ")
    if a.lower() == "c":
        break
    if not ((a.count(".") == 1 and a.replace(".","").isdigit()) or a.isdecimal()):
        print("NAN")
        exit()

    oper = input("input operation: ")
    if oper.lower() == "c":
        break
    if len(oper) != 1 or not oper in "+-*/":
        print("Unsupported operation")
        exit()
    
    b = input("input a number: ")
    if b.lower() == "c":
        break
    if not ((b.count(".") == 1 and b.replace(".","").isdigit()) or b.isdecimal()):
        print("NAN")
        exit()
    
    a = float(a)
    b = float(b)
    
    if oper == "+":
        print(a + b)
    if oper == "-":
        print(a - b)
    if oper == "*":
        print(a * b)
    if oper == "/":
        if b == 0:
            print("Division by zero.")
            continue
        print(a / b)

#eval(input("expr"))
