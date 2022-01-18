#!/usr/bin/python3

import sys

n = input("Enter first number: ")

if not n.isdigit():
    print("error")
    sys.exit()

m = input("Enter second number: ")

if not m.isdigit():
    print("error")
    sys.exit()


n = int(n)
m = int(m)

st = 0
end = 0

if n > m:
    st = m
    end = n
else:
    st = n
    end = m

for i in range ( st , end ):
    if i % 15 == 0:
        print("FizzBuzz", i)
    elif i % 3 == 0:
        print("Fizz", i)
    elif i % 5 == 0:
        print("Buzz", i)
