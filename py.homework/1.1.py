#!/usr/bin/python3

for i in range (100 , 1000) :
    n = i // 100
    u = i // 10 % 10
    m = i % 10
    if i %2 == 0 and u == 0 and m != 4:
        print(i)
