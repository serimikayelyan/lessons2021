#!/usr/bin/python3
while True:
    number = input("Enter  number: ")
    count = 0
    if number.isdigit():
        number = int(number)
        for i in range(number + 1):
            if i % 2 == 0:
                count += 1
        print(count)

