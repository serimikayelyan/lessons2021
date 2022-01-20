#!/usr/bin/python3

print("Instruction: Input math expresseion: only 1 action sign")
print("For exit use exit() command")

while True:

    expression = input("> ")
    sum = 0
    
    num1=""
    num2=""

    valid = 0
    for i in expression:
        if i == "+" or i == "-" or i == "*" or i == "/":
            valid += 1

    if valid > 1 or valid == 0:
        print("Read instruction")
    else:
        if expression == "exit()":
            break
        for i in range(len(expression)):
            
            argValid = 0

            if expression[i] == "+":
                num1 = expression[:i]
                num2 = expression[i+1:]
                if len(num1) == 0 or len(num2) == 0:
                    print("Missing Argument")
                    argValid = 1
                elif num1.isdigit() == False or num2.isdigit() == False:
                    print("Expression should be numbers!")
                    argValid = 1
                else:
                    sum = int(num1) + int(num2)

            if expression[i] == "-":
                num1 = expression[:i]
                num2 = expression[i+1:]
                if len(num1) == 0 or len(num2) == 0:
                    print("Missing Argument")
                    argValid = 1
                elif num1.isdigit() == False or num2.isdigit() == False:
                    print("Expression should be numbers!")
                    argValid = 1
                else:
                    sum = int(num1) - int(num2)

            if expression[i] == "*":
                num1 = expression[:i]
                num2 = expression[i+1:]
                if len(num1) == 0 or len(num2) == 0:
                    print("Missing Argument")
                    argValid = 1
                elif num1.isdigit() == False or num2.isdigit() == False:
                    print("Expression should be numbers!")
                    argValid = 1
                else:
                    sum = int(num1) * int(num2)

            if expression[i] == "/":
                num1 = expression[:i]
                num2 = expression[i+1:]
                if len(num1) == 0 or len(num2) == 0:
                    print("Missing Argument")
                    argValid = 1
                elif num1.isdigit() == False or num2.isdigit() == False:
                    print("Expression should be numbers!")
                    argValid = 1
                else:
                    sum = int(num1) // int(num2)
        if argValid == 0:            
            print(sum)

