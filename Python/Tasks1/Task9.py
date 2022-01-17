#!/usr/bin/python3

print("For exiting print 'c'")

while True:
    number = input("Enter a number: ")
    
    count = 0

    if number.isdigit():
        for i in range(1, int(number)+1):
            if i % 2 == 0:
                count += 1
        print(count)
    elif number.lower() == "c":
        break
    else:
        print("Input only numbers!")
