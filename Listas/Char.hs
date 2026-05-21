replicaChar :: Char -> Int -> [Char]
replicaChar c n 
    |n == 0 =  []
    |otherwise =  c:replicaChar c (n-1)

inverte :: [Char] -> [Char]
inverte [] = []
inverte (a:as) = inverte as ++(a:[])

main :: IO()
main = do 
    print( replicaChar 'a' 3 )
    print(inverte ['I','F', 'M','A'])
