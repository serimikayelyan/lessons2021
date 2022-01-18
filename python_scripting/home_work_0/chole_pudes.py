#! /usr/bin/python3.8

question = "Tell me why?"
correct_answer = "Ain't nothing but a heartache"

hidden = ""
inputed_chars = ""

for i in correct_answer:
    if i.isalnum():
        hidden += "-"
    else:
        hidden += i

print(question)
print(hidden, end="\n\n")

while True:
    hidden = ""
    char = input("Make your guess: ").casefold()
    if char == correct_answer.casefold():
        print("Correct!")
        break
    else:
        print("Nice try. (Just kidding)")
    if len(char) > 1:
        print("Try 1 character")
        continue
    elif len(char) == 0:
        print("Input something\n")
        continue
    if char in inputed_chars:
        print("You have already inserted this character, try another one\n")
        continue
    if not char.isalnum():
        print("Input number or letter")
        continue
    
    inputed_chars += char
    
    if not char in correct_answer:
        print("Wrong answer\n")
        continue

    for i in correct_answer:
        if i.isalnum() and not i.casefold() in inputed_chars.lower():
            hidden += "-"
        else:
            hidden += i
    
    print(hidden, end="\n\n")

    if hidden == correct_answer:
        break
