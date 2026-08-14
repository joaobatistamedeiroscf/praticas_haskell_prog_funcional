primo::Int->Boll
primoSophieGerman::Bool->Boll 
contaDiv:: Int->Int->Int
mod::Int->Int->Int

mod a b 
    |a<b == b 
    |

contaDiv x y 
    |i == 1 = 1 
    |mod(x , y) == 0 = 1 + contaDiv(x, y-1)
    |otherwise = contaDiv(x,y-1) 

primo x 
    |x == 1 = false
    |x == 2  = true 
    |contaDiv(x,x) == 2 = true
    |otherwise = false

primoSophieGerman n 
    | true = primo(n) == true && primo(n)
    |true = primo(n) == true && primo