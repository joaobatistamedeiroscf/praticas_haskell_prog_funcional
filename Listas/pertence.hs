{-Escreva uma função que informe se um número pertence ou não a uma lista.-}
pertence :: Int -> [Int] -> Bool 
pertence n [] = False
pertence n (cab:cauda)
    |n == cab = True 
    |otherwise = pertence n cauda  


main :: IO()
main = do 
    print(pertence 5 [4,3,5])