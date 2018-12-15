#Say "Hello, World!" With Python
print("Hello, World!")

#Python If-Else
#!/bin/python3

N = int(input())

if N % 2 ==0 :
    if  N in range(2,6):
        print("Not Weird")
    if N in range(6,21):
        print("Weird")
    if N >20 :
        print("Not Weird")
else :
    print("Weird")
	
	
#Arithmetic Operators
if __name__ == '__main__':
    a = int(input())
    b = int(input())
print(a+b)
print(a-b)
print(a*b)

#Python: Division
if __name__ == '__main__':
    a = int(input())
    b = int(input())
print(a//b)
print(a/b)

#Loops
if __name__ == '__main__':
    n = int(input())
for i in range(n):
    print(i**2)
	

#Write a function
def is_leap(year):
    leap = False
    if year % 4 ==0:
        if year % 100 == 0:
            if year % 400 ==0:
                leap = True
            else:
                leap = False
        else:
            leap = True
    else:
        leap = False   
    return leap

year = int(input())
print(is_leap(year))


#Print Function
if __name__ == '__main__':
    n = int(input())
for i in range(1,n+1):
    print(i,end="")

