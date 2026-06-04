x,y,z,u,v,w :: Integer
x = 12
y = 5
z = 35
u = 14
v = 100
w = 1

gcd0 :: Integer -> Integer -> Integer
gcd0 a b
  | a < b       = gcd0 b a
  | b == 0      = a
  | otherwise   = gcd0 b (mod a b)

lcm0 :: Integer -> Integer -> Integer
lcm0 a b = div (a*b) (gcd0 a b)

main = do
    let ans = foldr lcm0 1 [1..20]
    putStrLn $ show ans