#!/usr/bin/python3


count = 0
while True:
    x = input("text: ")
    if x == "c":
        break
    if not x.isdigit():
        print("gmpac")
        continue
    if x.isdigit() and int(x) % 2 == 0:
        count += 1
    print(count)
