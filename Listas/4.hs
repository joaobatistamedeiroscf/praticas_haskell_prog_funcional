{-Escreva uma função que retire o n-ésimo elemento de uma lista.
Exemplo: "abcdefghi" 3 -> "abdefghi"-}


pos :: Int -> [Char] -> Char
pos i (x:xs)
    | i == 0 = x
    |otherwise = pos(i-1) xs 


main :: IO()
main = do 
    print(pos 2['I','F','M','A'])