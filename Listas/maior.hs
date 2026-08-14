{-Escreva uma função que receba uma lista de inteiros positivos e retorne o maior elemento.-}

maior :: [Int] -> Int 
maior [] = 0 
maior (cab:cauda)
    |cab >  maior cauda = cab 
    |otherwise = maior cauda 

main :: IO()
main = do 
    print (maior[2,3,2]) 