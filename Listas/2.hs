{-Escreva uma função que retorne o maior elemento de uma lista de inteiros.-}

maior :: [Int] -> Int
maior [] = 0 
maior (cab:cauda)  
    |cab >  maior cauda = cab 
    |otherwise = maior cauda 

main :: IO()
main = do 
        print(maior [2,4,2])