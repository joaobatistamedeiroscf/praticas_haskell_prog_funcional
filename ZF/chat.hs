conta :: [String] -> String -> Int
conta [] _ = 0
conta (cab:cauda) p
    |cab == p = 1 + conta cauda
    |otherwise = conta cauda

