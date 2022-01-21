#!/bin/python
for i in range(100, 1000, 2):
	x = i//100
	z = (i - 100*x)//10
	y = (i - 100*x - 10*z)
	if z != 0 and y != 4:
		print(i)
