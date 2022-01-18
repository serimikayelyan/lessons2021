#!/usr/bin/python3
FNUM = int(input("Enter first number: ")) 
OPERATOR = input("Enter operator: ")
SNUM = int(input("Enter second number: "))

while True:
    if FNUM and OPERATOR and SNUM:
        if OPERATOR == "+":
            ANSWER = FNUM + SNUM
            print(ANSWER)
        elif OPERATOR == "-":
            ANSWER = FNUM - SNUM
            print(ANSWER)
        elif OPERATOR == "*":
            ANSWER = FNUM * SNUM
            print(ANSWER)
        elif OPERATOR == "/" and SNUM != 0:
            ANSWER = FNUM / SNUM
            print(ANSWER)
        OPERATOR = input("Enter operator: ")
        if OPERATOR.lower() == "c":
            break
        NUM = int(input("Enter another number: "))
        FNUM = ANSWER
        SNUM = NUM       
