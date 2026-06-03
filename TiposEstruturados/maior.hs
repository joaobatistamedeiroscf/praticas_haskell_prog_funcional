{-Crie uma função que receba uma tupla com dois inteiros e retorne o maior deles.-}

type Numbers = (Int , Int )

maior :: Numbers -> Int 
maior (a,b) 
    |a > b = a 
    |otherwise =  b 

main :: IO()
main = do 
    print(maior(20,30))