#!/usr/bin/python3

while True:
    num1 = eval(input("Enter first number: "))
    num2 = eval(input("Enter second number: "))

    print("Select operation.")
    print("1.Add")
    print("2.Subtract")
    print("3.Multiply")
    print("4.Divide")

    choice = input("Select operation(1/2/3/4): ")

    if choice == '1':
        print(num1 + num2)

    elif choice == '2':
        print(num1 - num2)

    elif choice == '3':
        print(num1 * num2)

    elif choice == '4':
        print(num1 / num2)
    agen = input("Agen (y/n): ")
    if agen =="y":
        continue
    if agen == "n":
        break
