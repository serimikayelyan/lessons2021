#!/usr/bin/python3


bar = ""
while True:
    x = input("text: ")
    if x == "c":
        break
    if len(x) > len(bar):
        bar = x
    print(bar)
