-- title: Triângulo
-- number of the problem: 1043
-- date: 22/09/20
-- author: ltsdw

import Text.Printf

f1 a b c = a + b + c
f2 a b c = (a + b) * c / 2.0

main :: IO ()
main = do
    l1 <- getLine

    let (a : b : c : _) = map (read :: String -> Double) $ words l1

    if ((a + b) > c) && ((c + a) > b) && ((c + b) > a)
        then do
            printf "Perimetro = %.1f\n" ( f1 a b c :: Double )
    else
        printf "Area = %.1f\n" ( f2 a b c :: Double ) 

