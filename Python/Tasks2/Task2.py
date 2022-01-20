#!/usr/bin/python3

print("Instruction: For trranslating to ASCII or from ASCII")
print("You need to input only a one character wheter a letter or a number(0-127)")
print("For exiting use exit() command")

while True:
    char = input("Enter wheter a char or number: ")

    if char.isnumeric():
        if int(char) >= 0 and int(char) <= 127:
            print(chr(int(char)))
        else:
            print("Please read instruction")
    elif char.isalpha():
        if len(char) > 0 and len(char) < 2:
            print(ord(char))
        elif len(char) >= 2:
            print("Please Read Instruction")
    elif char == "exit()":
        break
    else:
        print("Only numbers and letter characters!")
