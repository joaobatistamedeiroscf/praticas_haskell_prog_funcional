{-Escreva uma função que receba um número inteiro e uma lista de inteiros e informe quantas vezes esse número aparece na lista.-}

contnum :: Int -> [Int] -> Int
contnum num [] = 0 
contnum num (cab:cauda) 
    |num == cab = 1 + contnum num cauda 
    |otherwise = contnum num cauda 

main :: IO()
main = do 
    print(contnum 2 [2,3,2]) 