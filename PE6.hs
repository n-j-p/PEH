samplen, actualn :: Integer
samplen = 10
actualn = 100

square :: Integer -> Integer
square x = x*x

main = do
    let sumsq = sum (map square [1..actualn])
    let sqsum = square (sum [1..actualn])
    putStrLn $ show (sqsum - sumsq)