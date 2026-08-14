aplicacaoExclusiva :: (a -> Bool) -> (a -> a -> b) -> [a] -> [a] -> [b]
aplicacaoExclusiva f1 f2  l1 l2 =[ f2 e1 e2 | e1 <- (filter f1 l1) , e2 <-  (filter f1 l2) ]


selecioneExecuta :: (a-> Bool) -> (a -> b) -> [a] -> [b]
selecioneExecuta f1 f2 l = map f2 (filter f1 l) 

filtraPar :: (a -> Bool) -> (b -> Bool) -> [a] -> [b] -> [(a,b)]
filtraPar f1 f2 l1 l2 = [(e1 , e2) | e1 <- (filter f1 l1) , e2 <- (filter f2 l2)]



-- Função auxiliar para contar quantas vezes o elemento 'x' se repete consecutivamente no início
contaRep :: Eq a => a -> [a] -> Int
contaRep _ [] = 0
contaRep p (cab:cauda)
    | p == cab = 1 + contaRep p cauda  -- Se for igual, soma 1 e continua procurando
    | otherwise = 0                  -- Se for diferente, a sequência de repetições acabou

-- Função principal
listaRepeticao :: Eq a => [a] -> [([a], Int)]
listaRepeticao [] = []
listaRepeticao (cab:cauda) = [(grupo, cont)] ++ listaRepeticao (drop cont (cab:cauda))
  where
    -- Conta quantas vezes o 'x' se repete em sequência no início da lista
    cont = 1 + contaRep cab cauda
    
    -- Se cont for 1, significa que 'x' não se repete. Mas o exemplo agrupa
    -- elementos sem repetição vizinhos (ex: "abc" vira ("abc", 1)).
    -- Para simplificar e seguir o padrão do enunciado:
    grupo = take cont (cab:cauda)

juntar :: [([a], Int)] -> [([a], Int)]
juntar [] = []
juntar [x] = [x]
juntar ((lista1, 1) : (lista2, 1) : resto) = juntar ((lista1 ++ lista2, 1) : resto)
juntar (x : xs) = x : juntar xs

mapeiaTuplas :: (a -> b) -> [(a, c)] -> [(a,b)] 
mapeiaTuplas f1 l = map f1 l 

ou mapeiaTuplas f1 l = [f2 e | e <- l ]


main :: IO()
main = do 
    print (selecioneExecuta(>2) (*3) [1,2,3,4,5] ) 
    print(aplicacaoExclusiva (>2) (+) [1,2,3,4] [9,5,0] )
    print(listaRepeticao "abcaaaabccaaawxyzeeeeeeeee")
    print(juntar [("a",1),("b",1),("c",1),("aaaa",4),("b",1),("cc",2),("aaa",3),("w",1),("x",1),("y",1),("z",1),("eeeeeeeee",9)])
    