tamanholist :: [Int] -> Int 
tamanholist [] = 0 
tamanholist (cab:cauda) = 1 + tamanholist cauda

main :: IO()
main = do 
    print(tamanholist[2,3,4])
