#!/usr/bin/python3.8

m = input("Input first number: ")

if not m.isdigit():
    print("Input an integer please")
    exit()

n = input("Input second number: ")

if not n.isdigit():
    print("Input an integer please")
    exit()

m = int(m)
n = int(n)

start = min(m, n)
end = max(m, n)

print(f"range: ({start},{end})")

for i in range(start + (5 - start % 5), end, 5):
    if i % 3 != 0:    
        print(f"{i} -> Fizz")
for i in range(start + (3 - start % 3), end, 3):
    if i % 5 != 0:
        print(f"{i} -> Buzz")
for i in range(start + (15 - start % 15), end, 15):
    if i == 0:
        continue
    print(f"{i} -> FizzBuzz")
