#!/usr/bin/python3

#### requirement : The code must work indefinitely until the letter "C" is entered. The number of entered even numbers must be printed. 

import sys
numb = 0

while True:
    num = input("Enter number : ")
    
    if num == "C":
        sys.exit()
    
    if num.isdigit():
        num = int(num)
        if num % 2 == 0:
            numb += 1
            print(numb)
