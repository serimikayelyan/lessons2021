#!/usr/bin/python3


n = input("First number: ")
m = input("Second number: ")

st = 0
end = 0
if m > n:
    st = n
    end = m
else:
    st = m
    end = n
for i in range ( int(st) , int(end) , 1 ) :
    if i % 15 == 0:
        print("FizzBuzz", i)
    elif i % 3 == 0:
        print("Fizz", i)
    elif i % 5 == 0:
        print("Buzz", i)

