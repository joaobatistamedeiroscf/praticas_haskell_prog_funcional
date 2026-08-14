produto :: [Int] -> Int 
produto [] = 1
produto (cab:cauda) = cab * produto cauda


main :: IO()
main = do 
    print(produto[2,3,4])