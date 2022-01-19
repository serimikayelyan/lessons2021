#!/usr/bin/python3.8

while True:

	num1 = input("Enter first number: ")

	if num1.lower() == "c":
		break

	num2 = input("Enter second number: ")

	if num2.lower() == "c":
		break

	select = input("Select operators: ")

	if select.lower() == "c":
		break

	num1 = int(num1)
	num2 = int(num2)
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
	
	
