largestPrimeFactor :: Int -> Int
largestPrimeFactor n =
    calculateLargestPrimeFactor n sqrtN
    where sqrtN = floor.sqrt $ fromIntegral n

calculateLargestPrimeFactor :: Int -> Int -> Int
calculateLargestPrimeFactor n candidate
    | candidate == 1 = -1 -- shitty error code
    | ((n `mod` candidate == 0) && isPrime candidate) = candidate
    | otherwise = calculateLargestPrimeFactor n (candidate - 1)

isPrime n = n > 1 &&
              foldr (\p r -> p*p > n || ((n `rem` p) /= 0 && r))
                True primes

primes = 2 : filter isPrime [3,5..]
