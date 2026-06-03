{-Crie uma função que receba uma tupla com dois inteiros e retorne:
True se forem iguais ||| False caso contrário-}


type Numbers = (Int, Int)

ehIgual :: Numbers -> Bool
ehIgual (a,b) 
    | a == b = True
    | otherwise = False

main :: IO()
main = do 
    print(ehIgual(20,20))
