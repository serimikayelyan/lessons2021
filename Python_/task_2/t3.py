#!/usr/bin/python3


print("Write sentence and number")
text = input(">>>")
line = text.split()
num = line[-1]
num_ = line[-1]
if num.isdigit():
    num = int(num)
    if len(text) > num:
        print(text[:len(text)-len(num_)-num])
    elif len(text) <= num:
        print("The given number is greater than/equal to the count of letters:")
else:
    print("Enter a quantitative number at the end of the sentence")

# Սփեյսը հասկանում է սիմվոլ.
