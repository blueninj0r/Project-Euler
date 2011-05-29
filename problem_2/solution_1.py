def IsEvenNumber(number):
    return number % 2

def SumEvenFibonacci(firstTerm, secondTerm, maxTerm):
    nextTerm = firstTerm + secondTerm
    if(nextTerm > maxTerm):
        return 0
    if (IsEvenNumber(nextTerm)):
        return nextTerm + SumEvenFibonacci(secondTerm, nextTerm, maxTerm)
    else:
        return SumEvenFibonacci(secondTerm, nextTerm, maxTerm) 
      
def SumEvenFibonacciTerms(maxTerm):
    return 2 + SumEvenFibonacci(1, 2, maxTerm)

def OutputSum():
    print (SumEvenFibonacciTerms(4000000))

OutputSum()
