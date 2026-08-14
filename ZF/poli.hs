zipm :: [t] -> [u] -> [(t,u)]
zipm [] _ = []
zipm _ [] = []
zipm l1 l2 = [(a,b)| a <- l1 , b <- l2]

fstm :: (t,u) -> t 
fstm (x , _) = x
 
concatm :: [[t]] -> [t]
concatm [] = [] 
concatm (cab:cauda) = cab ++ concatm cauda


main :: IO()
main = do 
    print (zipm [1,2,3] ["a", "b" , "c"])
    print (fstm (1,"s"))
    print (concatm [[1,2,3],[5,6,7],[2,3,4]])