#!/usr/bin/python3

import sys

a = input("1 number: ")
b = input("2 number: ")

if not a.isdigit():
    print("Please enter number.")
    sys.exit()

if not b.isdigit():
    print("Please enter number.")
    sys.exit()

a=int(a)
b=int(b)

min_ = 0
max_ = 0

if a > b:
    min_ = b
    max_ = a
elif a < b:
    min_ = a
    max_ = b

for i in range(min_, max_):
    if i % 15 == 0:
        print(i,"is FizzBuzz")
    elif i % 3 == 0:
        print(i, "is Fizz")
    elif i % 5 == 0:
        print(i, "is Buzz")

