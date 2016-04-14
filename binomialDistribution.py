import math

x = 4
n = 12
prob = 0.2


def nCr(n,r):
    f = math.factorial
    return f(n) / f(r) / f(n-r)

result = nCr(n,x) * (prob**x) * ( (1-prob)**(n-x) )
print(result)

answer = 0 
while 0 <= x :
    result = nCr(n,x) * (prob**x) * ( (1-prob)**(n-x) )
    answer += result
    x -= 1

print(answer)
