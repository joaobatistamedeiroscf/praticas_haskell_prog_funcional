add :: Bool -> Bool -> Bool

add x y
    |x == True && y == True = True
    |otherwise = False


main :: IO ()
main =  do
     print (add True True)
     print (add False True)
     print (add True False)
     print (add False False)
