main :: IO()
main = do
    putStrLn "Digite um numero"
    s1 <- getLine 
    putStrLn "Digite outro numero"
    s2 <- getLine
    putStr "Soma dos numeros digitados "
    putStrLn (show (read s1 + read s2))    

