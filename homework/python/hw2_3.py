#!/usr/bin/python3

sent = input("Enter sentence: ")
num = int(input("Enter number: "))
len_ = len(sent)
fin_sent = ""

for i in range(0,len_-num):
	
	if num > len_:
		break

	fin_sent = fin_sent + sent[i]

print(fin_sent)

