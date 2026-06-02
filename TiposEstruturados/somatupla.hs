{-Crie uma função que receba uma tupla com três números inteiros (x, y, z) e retorne a soma dos três valores.-}

type Three = ( Int, Int , Int )

somaThree :: Three -> Int 
somaThree (a,b,c) = a + b + c 


main :: IO()
main = do 
    print(somaThree(5,5,5))