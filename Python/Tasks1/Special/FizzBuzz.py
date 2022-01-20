#!/usr/bin/python3

n = input("Enter 1st number: ")
m = input("Enter 2nd number: ")

minn = n
maxx = m

if n > m:
    minn = m
    maxx = n

if minn.isdigit() and maxx.isdigit():
    for i in range(int(minn), int(maxx)):
        if i % 15 == 0:
            print(i, "FizzBuzz")
        elif i % 3 == 0:
            print(i, "Fizz")
        elif i % 5 == 0:
            print(i, "Buzz")
else:
    print("Only Numbers")
