n = int(input())

flag = 0

if n > 1:
    for i in range(2, n):
        if (n % i) == 0:
            flag = 1
            break

if flag:
    print(n," is not prime")
else:
    print(n," is prime")
