{-Crie uma função que receba uma tupla representando um ponto no plano cartesiano (x, y) e retorne uma nova tupla com os valores invertidos.-}

type Pontos = (Int,Int)

inverte :: Pontos-> Pontos
inverte (a,b) = (b,a)


main :: IO()
main = do 
    print(inverte(7,4))