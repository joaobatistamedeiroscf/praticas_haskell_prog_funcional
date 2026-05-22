ordena :: [Int] -> [Int]
ordena [] = []
ordena (x:xs) = inserir x (ordena xs)


{-Já insere ordernando-}
inserir ::Int -> [Int] -> [Int]
inserir n [] = n:[]
inserir n (x:xs)
    |n <= x = n:x:xs
    |otherwise = x:(inserir n xs)


main :: IO()
main = do 
    print (ordena [5,9,2])