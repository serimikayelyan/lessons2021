#!/usr/bin/python3

print("write a sentence and a symbol that will divide it into parts ")
text = input(">>>")

line = text.split()
last = line[-1]
line2 = text.split(last)
if last in line[:len(line)]:
    for i in line2:
        print(i)
else:
    print("Specify an existing character in the sentence ")

