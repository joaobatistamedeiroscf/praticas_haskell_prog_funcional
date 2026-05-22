


eliminaRep :: [Char] -> [Char]
eliminaRep [] = []
eliminaRep (cab:[]) = [cab]
eliminaRep (cab:cauda)
    |cab /= head cauda = cab:eliminaRep cauda
    |otherwise = eliminaRep cauda


main :: IO() 
main = do 
    print(eliminaRep['a','a','b','c'])