sumEvenFibonacciNumbers :: Int -> Int
sumEvenFibonacciNumbers =
	sumEvenFibonacciNumbers max = sumEvenFibonacciNumbers 0 1 max
	sumEvenFibonacciNumbers x y max 
		| (x + y) > max = 0
		| even (x + y) = (x + y) + sumEvenFibonacci y (x + y) max
		| sumEvenFibonacci y (x + y) max
