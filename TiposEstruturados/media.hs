type Notas = (Double, Double , Double )

somaNotas :: Notas -> Double
somaNotas (n1,n2,n3) = n1 + n2 + n3 

mediaNotas :: Notas -> Double
mediaNotas (n1,n2,n3) = somaNotas(n1,n2,n3)/3

aprovado :: Notas -> Bool
aprovado (n1,n2,n3)
    |mediaNotas(n1,n2,n3) > 7 = True
    |otherwise = False


main :: IO()
main = do 
    print(somaNotas(5,5,5))
    print(mediaNotas(5,5,5))
    print(aprovado(5,5,5))