type Pessoa = (String , Int )


idadePessoa :: Pessoa -> Int 
idadePessoa (name , idade) = idade

namePessoa :: Pessoa -> String
namePessoa (name,idade) = name

main :: IO()
main = do 
    print(idadePessoa("João" ,20))
    print(namePessoa("Maria" ,20))
