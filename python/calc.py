#!/usr/bin/python3

num_1 = int(input("First number:"))
num_2 = int(input("Second number:"))

operation = input("What do you want to do?(+, -, *, or /):")

if (operation == "+"):
   print((num_1 + num_2))
elif (operation == "-"):
   print((num_1 - num_2))
elif (operation == "*"):
   print((num_1 * num_2))
elif (operation == "/"):
   print((num_1 / num_2))  
