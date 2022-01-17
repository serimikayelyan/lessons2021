#!/usr/bin/python3

# even number sum 0-100
#sum_ = 0
#for i in range(2, 101, 2):
#    sum_+=i
#
#print(sum_)

#----------------------------------------
# get sum of even numbers between a-b

#a = input("a: ")
#
#if not a.isdigit():
#    print(f"{a} is not a number.")
#    exit()
#
#b = input("b: ")
#if not b.isdigit():
#    print(f"{b} is not a number.")
#    exit()
#
#a = int(a)
#b = int(b)
#
#a = a if a % 2 == 0 else a + 1
#
#sum_ = 0
#for i in range(min(a, b), max(a, b) + 1, 2):
#    sum_ += i
#
#print(sum_)

#----------------------------------------
# 1-100 fiz, fizbuzz, buzz

# for number in range(15, 100, 15):
#     print(f"FizzBuzz: {number}")
# for number in range(3, 100, 3):
#     if number % 5 != 0:
#         print(f"Fizz: {number}")
# for number in range(5, 100, 5):
#     if number % 3 != 0:
#         print(f"Buzz: {number}")

#----------------------------------------
#print upper

#text = input("Input text: ")
#shift = 31
#
#for i in text:
#    if 65 <= ord(i) <= 90:
#        print(i)

#----------------------------------------
#swapcase

#text = input("Input text: ")
#shift = ord("a") - ord("A")
#
#new_text = ""
#for i in text:
#    if 65 <= ord(i) <= 90:
#        new_text += chr(ord(i) + shift)
#    elif 97 <= ord(i) <= 122:
#        new_text += chr(ord(i) - shift)
#    else:
#        new_text += i
#print(new_text)

#----------------------------------------
#reverse string

#text = input("Input text: ")
#new_text = ""
#
#for i in range(len(text) - 1, -1, -1):
#    new_text += text[i]
#
#print(new_text)

#----------------------------------------
#inf, get word print if polindrom

#while True:
#    word = input("Input word: ").casefold()
#    
#    if word == "c":
#        break
#
#    print(f"{word} -> {'polindrom' if word[::-1] == word else 'Not polindrom'}")
