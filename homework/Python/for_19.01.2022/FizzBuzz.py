#!/usr/bin/python3

import sys

m = input("Enter a number: ")
if not m.isdigit():
    print("You should enter a number")
    sys.exit()

n = input("Enter a number: ")
if not n.isdigit():
    print("You should enter a number")
    sys.exit()

n = int(n)
m = int(m)
start = 0
end = 0
if m > n:
    start = n
    end = m
else:
    start = m
    end = n
count_FizzBuzz = 0
count_Fizz = 0
count_Buzz =0
for i in range(start, end):
    if i % 15 == 0:
      count_FizzBuzz +=1
      print("FizzBuzz", i)
    elif i % 3 == 0:
      count_Fizz +=1
      print("Fizz", i)
    elif i % 5 ==0:
      count_Buzz +=1
      print("Buzz", i)

print ("count_FizzBuzz =", count_FizzBuzz)
print ("count_Fizz =", count_Fizz)
print ("count_Buzz =", count_Buzz)
