{-14. Considerando:
Reg = [(15,”Ana”),(22,”Pedro”),(2,”Maria”),(12,”João”),(14,”Pablo”),(23,”Poliana”)]
Implemente uma função para ordenar o registro considerando as
idades.-}


ordenaQuickSort :: [(Int , String)] -> [(Int ,String)] 
ordenaQuickSort [] = []
ordenaQuickSort (cab:cauda) = ordenaQuickSort [a | a <- cauda , fst a <= fst cab ]
                      ++[cab]++
                      ordenaQuickSort [a| a <- cauda , fst a > fst cab]


main :: IO()
main = do 
    print(ordenaQuickSort [(15,"Ana"),(22,"Pedro"),(2,"Maria"),(12,"João"),(14,"Pablo"),(23,"Poliana")])