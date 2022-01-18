#!/bin/python3
print("Please select operation")
print("1. Add")
print("2.Subtract")
print("3.Multiply")
print("4.Divide")
print("For exit press c")
while True:
    choice = input("Enter choice(1. 2. 3. 4.c.): ")
    if choice in ('1', '2', '3', '4'):
        num1 = int(input("Enter first number:")) 
        num2 = int(input("Enter second number:"))
    if choice.lower() == 'c':
        break
    if choice == "1":
        print(num1, "+", num2, "=", num1 + num2)
    elif choice == "2":
        print(num1, "-", num2, "=", num1 - num2)
    elif choice == "3":
        print(num1, "*", num2, "=", num1 * num2)
    elif choice == "4":
        print(num1, "/", num2, "=", num1 / num2)
    else:
        print("input only numbers!!")
