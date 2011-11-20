sumEvenFibonacciNumbers :: Int -> Int
sumEvenFibonacciNumbers max = recursiveSumEvenFibonacciNumbers 0 1 max

recursiveSumEvenFibonacciNumbers :: Int -> Int -> Int -> Int
recursiveSumEvenFibonacciNumbers x y max
    | (x + y) > max = 0
    | even (x + y) = (x + y) + recursiveSumEvenFibonacciNumbers y (x + y) max
    | otherwise = recursiveSumEvenFibonacciNumbers y (x + y) max
