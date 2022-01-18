text = input("Write your text,please:")
count = 0

for i in text:
    if i.isdigit():
        count += 1
print(count)

