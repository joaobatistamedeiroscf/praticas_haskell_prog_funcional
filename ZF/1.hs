{-Escreva uma função que retorne se um número pertence ou não
a uma lista.-}
pertl ::  [Int] -> Int -> Bool
pertl l n = [a | a <- l , n == a ] /= []
{-Escreva uma função que retorne o maior elemento de uma lista
de inteiros.-}
maior :: [Int] -> Int
maior l  = maximum[a | a <- l ]

main :: IO()
main = do 
    {-print(pertl [2,3,4] 2)-}
    print(maior [2,7,6])
