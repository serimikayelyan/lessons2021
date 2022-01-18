#!/usr/bin/python3

num=input("Enter number: ")
count = 0

while num != "c":
    if num.isalpha():
        print("Supported only numbers.")
        num=input("Enter number,pleace: ")
    else:
        if int(num)%2==0 and int(num) != 0:
            count+=1
        num=input("Enter number: ")
print(count)
