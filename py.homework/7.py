#!/usr/bin/python3

a = input("Your sentence :")

longest = max(a.split()  , key=len  )

print("Longest word is: ", longest)
