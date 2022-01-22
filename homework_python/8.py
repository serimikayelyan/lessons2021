#!/usr/bin/python3
_str = input()
mmax = 0
count = 0
max_l = ""
for i in _str:
    count = _str.count(i)
    if count > mmax:
         mmax = count
         max_l = i

print(max_l)
