#!/usr/bin/python3.8

num1 = int(input("Enter first number: "))
num2 = int(input("Enter second number: "))

select = input("Select operators: ")

#if not num1.isdigit():
#	print("Error")
#	sys.exit()
#
if select == "+":
    print(num1, "+", num2, "=", num1+num2)

elif select == "-":
    print(num1, "-", num2, "=", num1-num2)

elif select == "*":
    print(num1, "*", num2, "=", num1*num2)

elif select == "/":
    print(num1, "/", num2, "=", num1/num2)


