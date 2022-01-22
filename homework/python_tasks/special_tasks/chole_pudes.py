#!/usr/bin/python3
    
known_letter = ""

while True:
    
    print("who is the strongest scout?")
    
    ans = "Levi Ackerman"
    hidden_ans = ""
    
    for i in ans:
        if i.isalnum() and i.casefold() not in known_letter:
            hidden_ans += "*"
        else:
            hidden_ans += i
    print(hidden_ans)
    
    if hidden_ans == ans:
        break
    letter = input("letter: ").casefold()
    if letter == ans.casefold():
        print(letter)
        break
    if len(letter) > 1:
        print("one letter please \n")
        continue
    if not letter.isalnum():
        print("input letter or number \n")
        continue
    
    if letter in ans.casefold():
        known_letter += letter
    print()
