#!/usr/bin/python3

import sys
num_1 = int(input("First number:"))
num_2 = int(input("Second number:"))
while True :
        num_1 = input("First number:")
        if num_1.lower() == "c":
            print("Exit")
            sys.exit() 
            
        num_2 = input("Second number:")
        if num_1.lower() == "c":
            print("Exit")
            sys.exit()  

num_1 = int(num_1)
num_2 = int(num_2)
        
operation = input("What do you want to do?(+, -, *, or /):")
if operation.lower() == "c":
            print("Exit")
            sys.exit()
if operation == "+" or operation == "-" or operation == "*" or operation == "/":
  if (operation == "+"):
   print(add(num_1 + num_2))
  elif (operation == "-"):
   print((num_1 - num_2))
  elif (operation == "*"):
   print((num_1 * num_2))
  elif (operation == "/"):
   print((num_1 / num_2)
  else:
   print ("SyntaxError")
   break
