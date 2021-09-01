-- title: Intervalo
-- number of the problem: 1037
-- date: 22/09/20
-- author: ltsdw

import Text.Printf

main :: IO ()
main = do
    n' <- getLine

    let n = read n' :: Double

    if (n < 0) || (n > 100.0)
        then
            printf "Fora de intervalo\n"

     else 
        if (n >= 0) && (n <= 25.00)
            then
                printf "Intervalo [0,25]\n"
         else if (n > 25.00) && (n <= 50.00)
            then
                printf "Intervalo (25,50]\n"
         else if (n > 50.00) && (n <= 75.00)
            then
                printf "Intervalo (50,75]\n"
         else
            printf "Intervalo (75,100]\n"

