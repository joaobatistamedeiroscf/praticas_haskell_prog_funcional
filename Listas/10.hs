removeRep :: [String] ->[String] -> [String]
removeRep [] = []
removeRep (cab:cauda) l2
    |cab elem l2 =  removeRep cauda l2
    |otherwise = cab : removeRep cauda l2 

iguais :: [String] -> [String] -> [String]
iguais [] [] = []
iguais (cab :cauda) l2 
    | cab elem l2 = cab : iguais cauda l2
    | 
