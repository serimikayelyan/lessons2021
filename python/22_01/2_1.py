#!/usr/bin/python3

print('If you wont cuit enter "end"')
while True:

    giv = input('Enter a number or letter: ')
    if giv == 'end':
        break
    if giv.isalpha():
        print(ord(giv))
    if giv.isdigit():
        giv = int(giv)
        print(chr(giv))

