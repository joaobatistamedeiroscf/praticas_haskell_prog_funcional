remove :: Int -> [Int] -> [Int]
remove n [] = []
remove n (cab:cauda)
    |n == cab = remove n cauda
    |otherwise = cab : remove n cauda

main :: IO()
main = do 
    print (remove 2 [2,3,2,4,5,6])
