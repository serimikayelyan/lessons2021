#!/usr/bin/python3

tmp = ""

for i in range(100, 1000, 2):
    tmp = str(i)
    if i % 2 == 0 and tmp[-1] != "4" and tmp[1] == "0":
        print(i)
