def RemainderIsZero(dividend, divisor):
    return dividend % divisor == 0

def OutputSum():
    sum = 0
    for i in range(1, 1000):
        if(RemainderIsZero(i, 3) or RemainderIsZero(i, 5)):
            sum = sum + i
    print(sum)

OutputSum()
        

