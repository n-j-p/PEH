apalindrome, notapalindrome :: Integer
apalindrome = 5005
notapalindrome = 5125

inttoStr :: Integer -> String
inttoStr n = show n

reverseList :: String -> String
reverseList ns = reverse ns

isPalindrome :: Integer -> Bool
isPalindrome n = strn == revstrn
    where
        strn = inttoStr(n)
        revstrn = reverseList(strn)

two_digs = [10..99]
three_digs = [100..999]

-- Generates pairs of all combinations
cartProd :: [a] -> [b] -> [(a, b)]
cartProd xs ys = [(x, y) | x <- xs, y <- ys]

mul :: (Integer,Integer) -> Integer
mul (x,y) = x*y

main = do
    -- putStrLn $ inttoStr notapalindrome
    -- putStrLn $ reverseList (inttoStr notapalindrome)
    -- putStrLn $ show (cartProd [10..15] [3..12])

    let all_combs = cartProd two_digs two_digs
    let all_prods = map mul all_combs
    -- putStrLn $ show all_prods

    let thisit = filter isPalindrome all_prods
    -- putStrLn $ show thisit

    let ans = maximum thisit
    -- putStrLn $ show ans

    putStrLn $ show (maximum (filter isPalindrome (map mul (cartProd three_digs three_digs))))

    -- putStrLn $ "Done"
    