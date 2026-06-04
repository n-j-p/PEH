n :: Integer
n = 200000

isOdd :: Integer -> Bool
isOdd n = (mod n 2 == 1)

square :: Integer -> Integer
square n = n*n

main = do
    let x = filter isOdd [1..n]
    let sqx = map square x
    let sumsqx = sum sqx
    putStrLn $ show sumsqx

