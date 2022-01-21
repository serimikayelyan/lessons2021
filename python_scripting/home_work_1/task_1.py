#!/usr/bin/python3

for i in range(10,100,10):
    for j in range(0, 10, 2):
        if j == 4:
            continue
        print(str(i) + str(j))
