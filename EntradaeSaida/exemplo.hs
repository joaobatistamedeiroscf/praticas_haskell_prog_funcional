main :: IO() 
main = do 
    putStrLn "DIGITE UM NUMERO"
    num1 <- getLine
    putStrLn "DIGITE OUTRO NUMERO"
    num2 <- getLine
    let soma = (read num1 :: Int) + (read num2 :: Int)
    print soma



