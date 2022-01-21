#!/bin/python
sent = input("input sentence- ")
num = input("input num- ")
if len(sent) < int(num) and sent.isspace() == False:
	print("input small num")
end = int(num)*(-1)
print(sent[:end])
 	   
	
	
