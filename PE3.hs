samplen, actualn :: Integer
samplen = 13195
actualn = 600851475143

-- Generate infinite list of prime candidates by prepending
-- 2 and 3 to 6x \pm 1 for x >= 1:

-- 6x \pm 1:
candidates :: [Integer]
candidates = 5 : 7 : zipWith (+) candidates (cycle [6])

-- Prepend 2 and 3
possiblePrimes :: [Integer]
possiblePrimes = 2 : 3 : candidates

-- Recursive function to return unique prime divisors
get_prime_factors :: Integer -> [Integer] -> [Integer]
get_prime_factors n (x:xs)
--- If n is equal to the head of the list we have fully factorised n
  | n==x             = [x]
--- Otherwise if it divides n, we reduce n and try to divide again (recursively)
  | (mod n x) == 0   = x : get_prime_factors (div n x) (x:xs)
--- Finally, not a divisor? move on to next in list:
  | otherwise        = get_prime_factors n xs   

main = do
    let factors = get_prime_factors samplen possiblePrimes
    putStrLn $ show factors
    let largestFactor = last (factors)
    putStrLn $ show largestFactor

    let factors = get_prime_factors actualn possiblePrimes
    putStrLn $ show factors
    let largestFactor = last (factors)
    putStrLn $ show largestFactor