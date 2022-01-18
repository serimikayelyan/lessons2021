#!/usr/bin/python3.8

text = input("Input text: ").strip()

if len(text) == 0:
    print("No text")
    exit()

text_copy = text[:].lower()

most_used = None
least_used = None


while len(text_copy) != 0:
    if text_copy[0].isalpha():
        if most_used is None:
            most_used = text_copy[0]
            most_used_count = text_copy.count(most_used)
        if least_used is None:
            least_used = text_copy[0]
            least_used_count = text_copy.count(least_used)
        
        c = text_copy.count(text_copy[0])

        if c > most_used_count:
            most_used = text_copy[0]
        elif c < least_used_count:
            least_used = text_copy[0]

    text_copy = text_copy.replace(text_copy[0],"")

final_text = ""
for i in text:
    upper = i.isupper()
    if i.lower() == most_used:
        if upper:
            final_text += least_used.upper()
        else:
            final_text += least_used
    elif i.lower() == least_used:
        if upper:
            final_text += most_used.upper()
        else:
            final_text += most_used
    else:
        if upper:
            final_text += i.upper()
        else:
            final_text += i

print(final_text)
