#!/usr/bin/python3

import sys

while True:
    while True:
        number1 = input("Enter first number: ")
        if number1.lower() == "c":
            print("Exit.")
            sys.exit()
        if not number1.isdigit():
            print("Please enter number.")
            break


        number2 = input("Enter second number: ")
        if number2.lower() == "c":
            print("Exit.")
            sys.exit()
        if not number2.isdigit():
            print("Please enter number.")
            break

        number1 = int(number1)
        number2 = int(number2)

        print( "Enter your choice  ")
        print("1.Add")
        print("2.Subtract")
        print("3.Multiply")
        print("4.Divide")

        choice = input("Type your choice form 1, 2, 3, 4  :")
        if choice.lower() == "c":
                print("Exit")
                sys.exit()
        if choice in ('1', '2', '3', '4'):

          if choice == '1':
              print(number1, "+", number2 , "=" , number1+number2)
          elif choice == '2':
               print(number1, "-", number2, "=" , number1-number2)
          elif choice == '3':
              print(number1, "*", number2, "=" , number1*number2)
          elif choice == '4':
              print(number1, "/", number2, "=" ,number1/number2)
        else:
              print("Invalid choice")
              break

