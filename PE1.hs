isDiv :: Integer -> Bool
isDiv n = (mod n 3 == 0) || (mod n 5 == 0)

filt p [] = []
filt p (x:xs)
    | p x       = x : filt p xs
    | otherwise =     filt p xs

main = do
    let x = filter isDiv [1..999]
    let sumx = sum x
    putStrLn $ show sumx