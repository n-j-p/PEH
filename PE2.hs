n :: Integer
n = 4000000

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib(n-1) + fib(n-2)

fibs = map fib [1..]

isEven :: Integer -> Bool
isEven n = mod n 2 == 0

main :: IO()
main = do
    let x = filter (isEven) (takeWhile(<=n) fibs)
    let sumx = sum x
    putStrLn $ show sumx