
type Data = (Int ,Int , Int )

bissexto :: Data -> Bool
bissexto (_,_,a)
    |(mod a 4 == 0) && ((mod a 100 /= 0) || (mod a 400 == 0)) = True
    |otherwise = False

valida :: Data -> Bool
valida (d,m,a)
    | a >= 0 &&
      m >= 1 && m <= 12 &&
      d >= 1 && d <= 31 &&
      (m /= 2 || (bissexto (d,m,a) && d <= 29) || d <= 28) &&
      ((m /= 4 && m /= 6 && m /= 9 && m /= 11) || d <= 30)
      = True
      | otherwise = False

main :: IO()
main  = do 
    print(valida(2,3,2005))

