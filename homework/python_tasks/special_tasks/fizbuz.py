#!/usr/bin/python3


gt = 0
ls = 0

num1 = int(input("first number: "))
num2 = int(input("seqond number: "))

if num1 > num2:
    gt = num1
    ls = num2
else:
    gt = num2
    ls = num1


for i in range(ls, gt):
    if i % 3 == 0 and i % 5 != 0:
        print( i, "fiz")
    if i % 5 == 0 and i % 3 != 0:
        print( i, "bazz")
    if i % 15 == 0:
        print( i, "fizbazz")
