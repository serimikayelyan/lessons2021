#!/usr/bin/python3

for i in range(100, 911, 2):
    tens = i // 10 % 10
    points = i % 10
    

    if tens == 0 and points != 4:
        print(i)
