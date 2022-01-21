#!/usr/bin/python3

verji_2_haty = 0

for i in range(100, 999):
    if i % 2 == 0:
        verji_2_haty = i - i // 100 * 100
        if verji_2_haty // 10 == 0 and verji_2_haty % 10 != 4:
            print(i)
