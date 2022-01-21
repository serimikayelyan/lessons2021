#!/usr/bin/python3

print("Enter 'quit' to exit.")
while True:
    inp = input("Enter 1 number or 1 letter: ")
    if inp.casefold() == "quit":
        break
    if inp.isdigit():
        print(chr(int(inp)))
        continue

    if len(inp) > 1:
        print("More then one character was given.")
        continue
    if inp.isalpha():
        print(ord(inp))
    else:
        print("Not a number nor a letter.")
