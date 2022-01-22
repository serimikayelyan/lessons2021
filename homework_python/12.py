#!/usr/bin/python3
_str = input()
mmax = 0
mmin = len(_str)
max_l = ""
min_l = ""
count = 0
for i in _str:
    count = _str.count(i)
    if (count > mmax):
         mmax = count
         max_l = i
    if ( count < mmin):
          mmin = count
          min_l = i
print(max_l,min_l)
for i in range(len(_str)):
     if (_str[i] == max_l):
         _str = _str[:i] + min_l + _str[i+1: ]
         print(_str)
     elif (_str[i] == min_l):
          _str = _str[:i] + max_l + _str[i+1: ]

print(_str)


