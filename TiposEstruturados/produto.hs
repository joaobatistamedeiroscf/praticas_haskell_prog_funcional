{-Crie uma função que retorne o valor total em estoque.-}
type Produto = (String , Double , Double)

valorTotal :: Produto -> Double
valorTotal (name, quantidade , valor) = valor * quantidade

main :: IO()
main = do 
    print(valorTotal("Mouse",3,155.50))