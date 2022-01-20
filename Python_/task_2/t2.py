#!/usr/bin/python3


print("If you want to go out, write 'exit' ") 
while True:
    a = input("Enter a letter or number: ")
    if a.lower() == "exit":
        print("Exit.")
        exit()
    if a.isalpha():
        if  len(a) < 2:
            print( "Letter is_", a, ">>", "Ascii is_", ord(a) )
            continue
        else:
            print("You only need to enter one letter. ")
            continue
    elif a.isdigit():
            a = int(a)
            print( "Number is_", a, ">>", "Ascii is_", chr(a) )
    else:
        print("Please, enter only letter or number.")
