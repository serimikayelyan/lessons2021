#!/usr/bin/python3

n = int(input("n: "))
m = int(input("m: "))

for i in range(n, m):
    if i % 15 == 0:
        print("FizzBuzz", i)
    elif i % 3 == 0:
        print("Fizz", i)
    elif i % 5 == 0:
        print("Buzz", i)

