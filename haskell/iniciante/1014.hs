-- title: Consumo
-- number of the problem: 1014
-- date: 21/09/20
-- author: ltsdw

import Text.Printf

main :: IO ()
main = do
    d' <- getLine
    l' <- getLine

    let d = read d' :: Double
    let l = read l' :: Double

    printf "%.3f km/l\n" (d / l)

