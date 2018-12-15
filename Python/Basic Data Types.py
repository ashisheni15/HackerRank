#List Comprehensions
if __name__ == '__main__':
    x = int(input())
    y = int(input())
    z = int(input())
    n = int(input())
ar = []
for i in range(x+1):
    for j in range(y+1):
        for k in range(z+1):
            if i+j+k != n:
                ar.append([i,j,k])
print(ar)


#Find the Runner-Up Score! 
if __name__ == '__main__':
    n = int(input())
    arr = list(map(int, input().split()))
arr.sort(reverse =True)
for i in range(1,len(arr)):
    if arr[0] > arr[i]:
        print(arr[i])
        break


#Nested Lists
if __name__ == '__main__':
    arr = []
    for _ in range(int(input())):
        name = input()
        score = float(input())
        arr.append([name,score])
new=[]
for i in arr:
    new.append(i[1])
new.sort()
for i in range(1,len(new)):
    if new[0] < new[i]:
        sec = new[i]
        break
new.clear()
for i in arr:
    if i[1]==sec:
        new.append(i[0])
new.sort()
for i in new:
    print(i)
	
	
#Finding the percentage
if __name__ == '__main__':
    n = int(input())
    student_marks = {}
    for _ in range(n):
        name, *line = input().split()
        scores = list(map(float, line))
        student_marks[name] = scores
    query_name = input()
add = list(student_marks[query_name])
avg = sum(add)/len(add)
print('%.2f' % avg)


#Lists
if __name__ == '__main__':
    N = int(input())
arr = []
for i in range(0,N):
    a = input().split()
    
    if a[0] =='insert':
        arr.insert(int(a[1]),int(a[2]))
    elif a[0] == 'print':
        print(arr)
    elif a[0] == 'remove' :
        arr.remove(int(a[1]))
    elif a[0] == 'append' :
        arr.append(int(a[1]))
    elif a[0] == 'sort' :
        arr.sort()
    elif a[0] == 'pop' :
        arr.pop()
    elif a[0] == 'reverse' :
        arr.reverse()
		
		
		
#Tuples
if __name__ == '__main__':
    n = int(input())
    integer_list = tuple(map(int, input().split()))
print(hash(integer_list))
