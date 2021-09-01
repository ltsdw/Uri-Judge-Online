-- title: Gasto de Combustível
-- number of the problem: 1017
-- date: 21/09/20
-- author: ltsdw

import Text.Printf

gpmk :: Double
gpmk = 12.0

main :: IO ()
main = do
    t' <- getLine
    d' <- getLine

    let t = read t' :: Double
    let d = read d' :: Double

    printf "%.3f\n" ((t * d) / gpmk)

