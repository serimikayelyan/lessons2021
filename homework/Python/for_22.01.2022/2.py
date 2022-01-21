#!/usr/bin/python3

while True:
 n_w = input("for exit input '*'...... Input word or number : ")

 if n_w == "*":
    print("Exit.")
    break
 if n_w.isalpha():
   new = ord(n_w)
   print(new)
   continue
 if n_w.isdigit():
   n_w = int(n_w)  
   new = chr(n_w)
   print(new)
   

            
