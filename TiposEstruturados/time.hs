type Hora = (Int , Int , Int )

totalSegundos :: Hora -> Int 
totalSegundos(h,m,s) = (h * 60 * 60) + (m * 60) + s {-meia noite até o horário-}

{-▪Recebe uma Hora e informa se é válida-}
time :: Hora->Bool
time (h , m , s)
    | h < 0 || h > 23 = False
    |m < 0 || m > 59 = False 
    |s < 0 || s > 59 = False
    |otherwise = True 

{-▪Recebe uma Hora e retorna a quantidade de segundos desde a hora zero-}
timeS :: Hora->Int 
timeS (h , m , s)
    | h < 0 || h > 23 = 0
    | m < 0 || m > 59 = 0
    | s < 0 || s > 59 = 0
    |otherwise =  totalSegundos(h,m,s)
 
timeSH :: Int -> Hora 
timeSH s
    |s < 60  = (0 ,0,s)       {-Posso tirar essas duas linhas-}
    |s < 3600 = (0,(div s 60),(mod s 60) )
    |otherwise = (hora,minutos,segundos)
    where 
        hora = (div s 3600)
        modMinutos = (mod s 3600)
        minutos = (div modMinutos 60 )
        segundos = (mod modMinutos 60)

{-▪Recebe um valor inteiro representando segundos e converte na hora correspondente-}


main :: IO()
main = do
    print(time (1,59,40))
    print(timeS(2,59,40))
    print(timeSH 4)