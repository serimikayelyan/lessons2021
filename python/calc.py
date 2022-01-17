#!/usr/bin/python3
number1 = int(input("Enter first number: "))
number2 = int(input("Enter second number: "))
operator = input("Select the operator +, -, *, /: ")
answer = 0
if operator == "+":
    answer = number1 + number2
if operator == "-":
    answer = number1 - number2
if operator == "*":
    answer = number1 * number2
if operator == "/":
    answer = number1 / number2
print(answer)

