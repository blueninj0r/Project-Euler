largestPalindromeOfProduct :: Int -> Int
largestPalindromeOfProduct maximumOperand =
    maximum [x*y | x <- [1..maximumOperand], y <- [1..maximumOperand], isPalindrome (x * y)]
        where isPalindrome x = show x == (reverse $ show x)

