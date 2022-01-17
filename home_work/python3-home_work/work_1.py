#!/usr/bin/python3

import sys

num1 = input("Enter first number : ")

if not num1.isdigit():
    print("error (first number) -> enter only number")
    sys.exit()

num2 = input("Enter second number : ")

if not num2.isdigit():
    print("error (second number) -> enter only number")
    sys.exit()

num1 = int(num1)
num2 = int(num2)

start = 0
end = 0

if num1 > num2:
    start = num2
    end = num1
elif num2 > num1:
    start = num1
    end = num2
else:
    print("error (the numbers match) -> enter different numbers")

for i in range(start, end + 1):
    if i % 15 == 0:
        print("FizzBuzz", i)
    elif i % 3 == 0:
        print("Fizz", i)
    elif i % 5 == 0:
        print("Buzz", i)


