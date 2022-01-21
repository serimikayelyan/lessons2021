#!/usr/bin/python3

print("for break input 'end'.")

while True:
    
    tvatar = input("number or letter: ")
    if tvatar == "end":
        break
    if len(tvatar) > 1:
        print("gmpac")
        continue
    if tvatar.isdigit():
        print(chr(int(tvatar)))
    elif tvatar.isalpha():
        print(ord(tvatar))    
