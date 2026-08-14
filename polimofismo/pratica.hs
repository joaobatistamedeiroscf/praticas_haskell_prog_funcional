listaquadrado :: [Int] -> [Int]
listaquadrado l = map(^2) l

{-somaquadrado :: [Int] -> Int
somaquadrado l = foldr (+0) (map^2) l 

positivos :: [Int] ->  [Int]
positivos l = filter (>0) l 
-}
{-valorMinimo :: (Int -> Int ) -> Int  -> [Int]
valorMinimo f n = minimum (map f [0..n]) 
-}

contador :: (a -> Bool) -> [a] -> Int
contador f l = length (filter f l ) 

{-repetir algo-}
rep :: Int -> t -> [t]
rep 0 _ = []
rep n p = p : rep(n - 1) p

concaten :: [t] -> [t] -> [t]
concaten [] l2 = l2
concaten l1 [] = l1
concaten l1 l2 =  l1 ++ l2

repete :: a -> Int -> [a]
repete _ 0 =  []
repete p n =  p : repete p (n-1)

descomprimir :: [(a,Int)] -> [a]
descomprimir [] = []
descomprimir (cab : cauda) = repete (fst cab) (snd cab) ++  descomprimir cauda

contaVizinhosIguais :: Eq a => [a] -> Int
contaVizinhosIguais [] = 0 
contaVizinhosIguais [a] = 0 
contaVizinhosIguais (cab:cauda) 
    |cab == head cauda =  1 + contaVizinhosIguais cauda
    |otherwise = contaVizinhosIguais cauda

contaRep :: Eq a => [a] -> Int
contaRep [] = 0 
contaRep [a] = 1
contaRep (cab:cauda) 
    |cab == head cauda =  1 + contaRep cauda
    |otherwise = 1

listaRepeticao :: [t] -> [([t], Int)]
listaRepeticao [] = []
listaRepeticao  l = [(head l , cont)] ++ listaRepeticao (drop cont l)
    where 
        cont = contaRep l 

aplicacaoExclusiva :: (a -> Bool) -> (a -> a -> b) -> [a] -> [a] -> [b]
aplicacaoExclusiva f1 f2  l1 l2 =[ f2 e1 e2 | e1 <- (filter f1 l1) , e2 <-  (filter f1 l2) ]

filtraPar :: (a -> Bool) -> (b -> Bool) -> [a] -> [b] -> [(a,b)]
filtraPar f1 f2 l1 l2 = [(e1 , e2) | e1 <- (filter f1 l1) , e2 <- (filter f2 l2)]

selecioneExecuta :: (a-> Bool) -> (a -> b) -> [a] -> [b]
selecioneExecuta f1 f2 l =  map f2 (filter f1 l)
{-contaComp :: Eq a => [a] -> Int
contaComp [] = 0

contaComp (cab:cauda)
    | cab /= head cauda = 1 + contaComp cauda
    | otherwise         = contaComp cauda

totalExecucao :: (a -> b) -> [a] -> Int 
totalExecucao f n = 
conta :: Eq a => a -> [a] -> (Int,[a])
conta x [] = (1,[])
conta x (y:ys)
    | x == y = (n+1,resto)
    | otherwise = (1,y:ys)
    where
        (n,resto) = conta x ys

pegaDiferentes :: Eq a => [a] -> ([a],[a])
pegaDiferentes [] = ([],[])
pegaDiferentes [x] = ([x],[])
pegaDiferentes (x:y:xs)
    | x == y = ([],x:y:xs)
    | otherwise = (x:bloco,resto)
    where
        (bloco,resto) = pegaDiferentes (y:xs)

comprimir :: Eq a => [a] -> [([a],Int)]
comprimir [] = []
comprimir (x:xs)
    | n > 1 = ([x],n) : comprimir resto
    | otherwise = (bloco,1) : comprimir resto2
    where
        (n,resto) = conta x xs
        (bloco,resto2) = pegaDiferentes (x:xs)
-}
main :: IO()
main = do 
    {-print(rep 2 (1,2))-}
    {-print(concaten "Joao Batista" " Medeiros Conceicao Filho")-}
    
   {-
    print(repete 3 2 )
    print(descomprimir [("a",3), ("a",3)])
    print (contaComp "abc")
    print  
    -} 
    print(contador (/= 'a') "banana")
    print (contaVizinhosIguais [1,4,3,2,2,6,1,1])
    {-print(filtraPar (>3) (<4) [1,2,3,4,5,6] [8,4,7,1,5,2])-}
    