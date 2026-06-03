-- From google
iSqrt_non :: Integral a => a -> a
iSqrt_non = floor . sqrt . fromIntegral

-- recursive:
iSqrt_wrapper :: Integer -> Integer -> Integer
iSqrt_wrapper n a
  | n<a       = 0
  | n==a      = 1
  | otherwise = 1 + iSqrt_wrapper (n-a) (a+2)

iSqrt :: Integer -> Integer
iSqrt n = iSqrt_wrapper n 1

--
filterDivisors :: Integer -> [Integer] -> [Integer]
filterDivisors n candList = filter (\x -> isFactor n x) candList

main = do
    let x = iSqrt 15
    let y = iSqrt 16
    let z = iSqrt 123456789
    putStrLn $ show x
    putStrLn $ show y
    putStrLn $ show z