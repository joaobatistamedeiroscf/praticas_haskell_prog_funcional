fatorial::Int->Int 
fatorial n 
    | n == 0 = 1 
    | n > 0 = n * fatorial(n - 1)




main :: IO ()
main = print (fatorial 5)