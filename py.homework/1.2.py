#!/usr/bin/python3

print("A-Z --> 65-90")
print("a-z --> 97-122")
print("symbols --> 58-64 and 33-47 ")
print("numbers --> 48-57")
print("nothing --> 1-32")

while True:
    a = input("Letter or number:")

    if a == "0" :
       break
    if a.isalpha():
       print(ord(a))
    if a.isdigit():
       num =int(a)
       print(chr(num))
       
