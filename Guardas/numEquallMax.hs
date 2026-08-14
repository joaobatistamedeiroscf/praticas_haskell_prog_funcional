maxthree::Int-> Int ->Int -> Int 
numequalMax::Int -> Int -> Int -> Int 
maxthree a b c 
    |a >= b  && a >= c = a  
    |b >= a && b >= c = b 
    |c >= a && c >= b = c 

numequalMax a b c
    |a  ==  maxthree a b c && b == maxthree a b c && c == maxthree a b c = 3   
    |a == maxthree a b c && b == maxthree a b c  = 2 
    |a == maxthree a b c && c == maxthree a b c = 2
    |b == maxthree a b c && c == maxthree a b c = 2 
    |otherwise = 1



main :: IO ()
main =  do
    print( numequalMax 8 8 9)