#!/usr/bin/python3

while True:
    TEXT = input("Enter a number or a letter: ")
    if len(TEXT) > 0:
        if TEXT.lower() == "break":
            break
        elif TEXT.isdigit():
            TEXT = int(TEXT)
            if 33 < TEXT < 122: 
                VAL = chr(TEXT)
            else:
                print("Can't find symbol")
                break
        elif TEXT.isalpha():
            if len(TEXT) > 1:
                print("Print only 1 symbol")
                break
            else:
                VAL = ord(TEXT)
    print(VAL)
