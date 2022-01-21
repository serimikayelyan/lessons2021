#!/usr/bin/python3

import sys

while True:
    
    num_let = input("Enter a number or letter : ")

    if num_let == "exit":
        sys.exit()

    if num_let.isalpha():
        if len(num_let) == 1:
           print(ord(num_let))
        else:
            print("error -> enter only one letter")
    elif num_let.isdigit():
        num_let = int(num_let)
        print(chr(num_let))
    else:
        print("Enter only number or letter")

