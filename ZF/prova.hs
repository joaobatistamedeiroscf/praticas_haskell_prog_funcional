conta :: String -> [String] -> Int
conta p l = length[a | a <- l , p == a]

remove :: [String]  -> [String]
remove [] = []
remove (cab:cauda) = cab : remove [a | a <- cauda , cab /= a ]

freqpalavra :: [String] -> String  -> [(Int, String)]
freqpalavra l p = [(conta p l ,p ) | p <- remove l ]

quickSort :: [(Int,String)] -> [(Int,String)]
quickSort [] = []
quickSort (x:xs) =
    quickSort [a | a <- xs, fst a >= fst x]
    ++ [x] ++
    quickSort [a | a <- xs, fst a < fst x]

analiseFrequencia :: [String] -> [String]
analiseFrequencia lista =
    [palavra | (_,palavra) <- quickSort (freqPalavras lista)]
   
main :: IO()
main = do 
    print(conta "casa" ["casa","bola","casa","uva"]  )
    print(remove["casa","bola","casa","uva"]  )
