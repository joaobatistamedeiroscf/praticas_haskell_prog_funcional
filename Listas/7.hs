{-Escreva uma função que duplique cada elemento de uma lista.
Exemplo:
[1, 2, 3] -> [1,1,2,2,3,3]-}


du :: [Int] -> [Int]
du [] = []
du (cab:cauda) = cab : cab : du cauda

main :: IO()
main = do 
    print(du[1,2,3])