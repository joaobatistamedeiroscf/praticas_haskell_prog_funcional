type Pessoa = (String , Int )
idadePessoa :: Pessoa -> Int 
idadePessoa (name , idade) = idade
    
main :: IO()
main = do 
    print(idadePessoa("João" ,20))