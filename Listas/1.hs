{-1. Escreva uma função que retorne se um número pertence ou não a uma lista.-}

pertence :: Int -> [Int] -> Bool
pertence n [] = False
pertence n (x:xs)
    |n == x = True 
    |otherwise = pertence n xs

pertenceGuardas :: Int -> [Int] -> Bool
pertenceGuardas n lista 
    |lista == [] = False
    |n == head lista = True
    |otherwise = pertenceGuardas n (tail lista)
main :: IO()
main = do 
    print(pertence 2 [3,4,5])
    print(pertenceGuardas 2 [3,2,5])