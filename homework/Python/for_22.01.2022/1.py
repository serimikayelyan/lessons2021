#!/usr/bin/Python3

for i in range(100,1000,2):    
   
   a = i//100
   b = (i-100*a)//10
   c = i-100*a-10*b
   if b == 0 and c != 4:
    print (i)
  
