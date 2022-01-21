#!/usr/bin/python3

for i in range(100, 1000):
    if i % 2 == 0 and i % 100 < 10:
        REMAINDER = i % 100
        if REMAINDER % 10 != 4:
            print(i)
