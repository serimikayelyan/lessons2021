#!/usr/bin/python3

for i in range(100, 1000, 2 ):
    if  (i - (100*(i//100))) // 10  == 0 :
        if not  i - (100*(i//100)) == 4:
            print(i)

