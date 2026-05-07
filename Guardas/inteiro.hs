venda :: Int -> Int
venda 0 = 5
venda 1 = 9
venda 2 = 6
venda 3 = 8
venda 4 = 0 
venda 5 = 17

{-▪Q1: Qual o total de vendas desde a semana 0 até a semana n?-}
totalVenda :: Int -> Int
totalVenda n
    | n == 0 = venda 0
    | n > 0 = venda n + totalVenda (n - 1)
    | otherwise = 0

{-▪Questão 2: Qual a maior venda semanal entre as semanas 0 e n? -}
maiorVenda :: Int -> Int
maiorVenda n
    | n == 0 = venda 0
    | maiorVenda (n - 1) > venda n = maiorVenda (n - 1)
    | otherwise = venda n

{- ▪Refazer utilizando uma função que retorna o maior número entre dois (máximo)-}
maiorVendaDois :: Int -> Int 
maiorVendaDois n
    |n == 0 = 0 
    |otherwise = max (maiorVenda(n -1)) (venda n)

{-▪Em que semana ocorreu a maior venda? -}
semanaMaiorVenda :: Int -> Int 
semanaMaiorVenda n 
    |n == 0 = 0
    |venda( semanaMaiorVenda (n - 1)) > venda n  = semanaMaiorVenda(n - 1)
    |otherwise = n 

{-▪Existe alguma semana na qual nada foi vendido? -}
nadaVendido :: Int -> Bool
nadaVendido n
    | n < 0 = False
    | venda n == 0 = True
    | otherwise = nadaVendido (n - 1)

{-▪Em qual semana não houve vendas? (se é que houve alguma) -}
semanaSemVenda :: Int -> Int 
semanaSemVenda n 
    |n < 0 = -1
    |venda n == 0 = n
    |otherwise = semanaSemVenda(n -1) 


main :: IO ()
main = do 
    print(totalVenda 2 )
    print(maiorVenda 2 )
    print(maiorVendaDois 2)
    print(semanaMaiorVenda 5)
    print(nadaVendido 3)
    print(semanaSemVenda 5)
    
    
     