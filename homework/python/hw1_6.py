#!/usr/bin/python3.8

sent = input("Enter sentence: ")
 
print(" ".join(i[::-1] for i in sent.split()))

