#!/usr/bin/python3.8
while True:
    number1 = input("Please enter the first number: ")
    if number1.lower() == "c":
        break

    char = input('''
    + for additon
    - for substraction
    * for multiplication
    / for division
    ''')
    if char.lower() == "c":
        break
    number2 = input("Please enter the second number: ")
    if number2.lower() == "c":
        break 

    number1 = int(number1)
    number2 = int(number2)
    if char == "+":
        print(number1 + number2)
    elif char == "-":
        print(number1 - number2)
    elif char == "*":
        print(number1 * number2)
    elif char == "/":
        print(number1 / number2)
#I dont underestand why else will not work:(
#	else:
#		print("Error: You entered an incorrect character: ")
