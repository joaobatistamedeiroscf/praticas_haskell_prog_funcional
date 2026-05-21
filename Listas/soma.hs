soma :: [Int] -> Int 
soma [] = 0
soma (x:xs) = x + soma xs



main :: IO ()
main = do
        print(soma [2,2,2])