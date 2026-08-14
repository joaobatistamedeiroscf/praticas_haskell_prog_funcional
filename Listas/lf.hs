conta :: [String] -> String -> Int 
conta [] _ = 0
conta (cab: cauda) p
    |cab == p = 1 + conta cauda p
    |otherwise = conta cauda p 

tuplafreqpalavra :: [String] -> String -> (Int , String)
tuplafreqpalavra [] p = (0,p)
tuplafreqpalavra l p = (conta l p, p)

removePalavrarep :: [String] -> String -> [String] 
removePalavrarep [] _ = []
removePalavrarep (cab:cauda) p  
    |cab == p = removePalavrarep cauda p 
    |otherwise = cab : (removePalavrarep cauda p) 

percorreLista :: [String] -> [(Int,String)]
percorreLista [] = []
percorreLista (cab:cauda)  = [tuplafreqpalavra (cab:cauda) cab] ++ percorreLista(removePalavrarep cauda cab )
{-menor para maior-}
ordquickSort :: [(Int,String)] -> [(Int,String)] 
ordquickSort [ ] = [ ]
ordquickSort (cab:cauda) = ordquickSort [a | a <- cauda , fst a >= fst cab]  
                            ++ [cab] ++
                    ordquickSort [a | a <- cauda , fst a < fst cab]

extraiPalavra :: [(Int,String)] -> [String]
extraiPalavra [] = []
extraiPalavra ((freq,palavra):cauda) = palavra : extraiPalavra cauda

analiseFrequencia :: [String] -> [String]
analiseFrequencia lista = extraiPalavra (ordquickSort (percorreLista lista))

hamming :: String -> String -> Int
hamming [] p = length p {-se o a primeira palavra for vazia e a segunda não for retorna o tamanho da segunda-}
hamming p [] = length p {-se o a primeira palavra tiver palavra e a segunda for vazia retorna o tamanho da primeira-}
hamming (cab1:cauda1) (cab2:cauda2)
    |cab1 == cab2 = hamming cauda1 cauda2 
    |otherwise = 1 + hamming cauda1 cauda2 

listaHamming :: [String] -> [String] -> [(String, String, Int)]
listaHamming [] _ = []
listaHamming _ [] = []
listaHamming (cab1:cauda1) (cab2:cauda2) = 
    (cab1, cab2, hamming cab1 cab2) : listaHamming cauda1 cauda2


listaHammingtupla::String -> String -> [(String,String, Int)] 
listaHammingtupla l1 l2 = [(l1,l2,hamming l1 l2 )]

main :: IO()
main = do 
    
    print(conta ["casa", "bola", "casa", "rua" , "rua", "casa"] "casa")
    print(tuplafreqpalavra ["casa", "bola", "casa", "rua" , "rua", "casa"] "casa")
    print(removePalavrarep ["casa", "bola", "casa", "rua" , "rua", "casa"] "casa")
    print(percorreLista ["casa", "bola", "casa", "rua" , "rua", "casa"])
    print(ordquickSort [(2,"casa"),(3,"bola"),(1,"rua")])
    print(extraiPalavra [(3,"casa"),(2,"bola"),(1,"rua")])
    print(analiseFrequencia ["casa", "bola", "casa", "rua" , "rua", "casa"])
    print(listaHammingtupla "rotom" "motor")



    


  
