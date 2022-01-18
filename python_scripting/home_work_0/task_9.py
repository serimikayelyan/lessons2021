#!/usr/bin/python3

even_c = 0

while True:
    inp = input("Input: ").strip()
    if inp.casefold() == "c":
        break
    if inp.isdigit() and int(inp) % 2 == 0:
        even_c += 1
    print("Even number count:", even_c)
