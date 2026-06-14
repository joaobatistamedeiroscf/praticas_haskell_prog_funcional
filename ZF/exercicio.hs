{-Lista os divisores de um número-}
divisores :: Int -> [Int] 
divisores n = [x | x <- [1..(n-1)], mod n x == 0]
{-Número perfeito - a soma dos divisores tem que ser ele mesmo-}
perfeito :: Int -> [Int]
perfeito n = [x | x <- [1..n],sum(divisores x) == x]
{-▪Concatena - Semelhante a função concat (concatena uma lista de listas em uma única)-}
concatena :: [Int] -> [Int] -> [Int]
concatena l1 l2 = l1 ++ l2
{-Combinações-}
comb :: [Int] -> [Int] -> [(Int, Int)]
comb l1 l2 = [(a,b)| a <- l1 , b <- l2]
main :: IO()
main =  do 
    print(divisores 6)
    print(perfeito 28)
    print(concatena [2,3] [3,4])
    print(comb [1,2,3] [2,4,5])
    