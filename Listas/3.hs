{-3. Escreva uma função que receba um número inteiro positivo n, uma lista e retorne o n-ésimo elemento da lista.-}
pos :: Int -> [Int] -> Int
pos i l
    | l == [] = 0
    | i == 0 = head l
    |otherwise = pos(i-1) (tail l) 



somaTriplas :: [(Int,Int, Int)] -> Int
somaTriplas [] = 0
somaTriplas l = sum[a+b+c | (a,b,c) <- l]
main :: IO()
main = do 
    print(pos 2[5,8,14])
    print(somaTriplas[(2,3,4)])
