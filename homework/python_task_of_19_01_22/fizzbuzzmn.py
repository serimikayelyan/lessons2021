#!/usr/bin/python3
number_m = int(input("Enter a first number: "))
number_n = int(input("Enter a second number: "))
st = 0
end = 0
if number_n > number_m:
    st = number_m
    end = number_n
else:
    st = number_n
    end = number_m
for i in range(st, end, 1 ):
    if i % 15 == 0:
        print("FizzBuzz", i)
    elif i % 3 == 0:
        print("Fizz", i)
    elif i % 5 == 0:
        print("Buzz", i)
