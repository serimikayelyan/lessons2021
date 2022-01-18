#!/usr/bin/python3

print("The question is : What can't be consumed in the transport of the city of the Toronto?")
print("Write the answer in lower case only ")
print("A little hint : It's a food. Be attentive. You can 😎")
print("------")
word = "------"
while True :
    reply = input("Enter a letter: ")


    if  len(reply) > 2:
        print("Be carefull")
    elif reply == "g":
        word = "g" + word[1:]
        print(word )
    elif reply == "a":
        word = word[0] + "a" + word[2:]
        print(word )
    elif reply == "r":
        word = word[:2] + "r" + word[3:]
        print(word)
    elif reply == "l":
        word = word[0:3] + "l" + word[4:]
        print(word )
    elif reply == "i":
        word = word[0:4] + "i" + word[5:]
        print(word)
    elif reply == "c":
        word = word[0:5] + "c" + word[6:]
        print(word)
    elif reply == "garlic":
        word = "garlic"
        print(word)
    else:
        print("Please try again:")

    if word == "garlic":
        print("Congratulations 🥳")
        break
