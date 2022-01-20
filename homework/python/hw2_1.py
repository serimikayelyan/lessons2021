#!/usr/bin/python3


for num in range(100, 999):
	a = num // 100
	b = num //10 % 10
	c = num % 10
	
	if num % 2 == 0 and b == 0 and c != 4:
		print(num)
