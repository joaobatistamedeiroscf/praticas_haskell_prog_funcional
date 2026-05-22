{-Escreva uma função que retorne o maior elemento de uma lista de inteiros.-}

maior :: [Int] -> Int
maior [] = 0 
maior (x:xs)  
    |x >  maior xs = x 
    |otherwise = maior xs 

main :: IO()
main = do 
        print(maior [2,4,2])