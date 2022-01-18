#!/bin/python
import sys
num1 = input("input first number - ")
if not num1.isdigit():
    print("You should enter a number")
    sys.exit()
num2 = input("input second number - ")
if not num2.isdigit():
    print("You should enter a number")
    sys.exit()
num1 = int(num1)
num2= int(num2)
first_num = 0
second_num = 0
if num1 > num2:
    first_num = num1
    second_num = num2
else:
    first_num = num1
    second_num = num2
    for i in range(first_num, second_num):
        if i % 15 == 0:
            print("FizzBuzz", i)
        elif i % 3 == 0:
            print("Fizz", i)
        elif i % 5 == 0:
            print("Buzz", i)
