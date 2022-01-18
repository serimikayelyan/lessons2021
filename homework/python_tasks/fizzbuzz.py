#!/usr/bin/python3

N = int(input("Enter first number: "))
M = int(input("Enter second number: "))

MINNUM = N
MAXNUM = M

if N > M:
    MINNUM = M
    MAXNUM = N

for i in range(MINNUM, MAXNUM + 1):
    if i % 15 == 0:
        print(i,": is FizzBuzz number")
    elif i % 3 == 0:
        print(i,": is Fizz number")
    elif i % 5 == 0:
        print(i,": is Buzz number")
    else:
        print(i, ": is a simple number")
