#!/usr/bin/python3

#### requirement : The code must work indefinitely until the letter "C" is entered. The longest of the typed words must be typed. 

import sys
st_len = 1
st_str = ""

while True:
    word = input("Enter the word : ")
    
    if word == "C":
        sys.exit()
    
    if st_len < len(word):
        st_len = len(word)
        st_str = word
        print(st_str)
    else:
        print(st_str)

