-- title: Distância Entre Dois Pontos
-- number of the problem: 1015
-- date: 21/09/20
-- author: ltsdw

import Text.Printf

main :: IO ()
main = do
    l1 <- getLine
    l2 <- getLine

    let (x1 : y1 : _) = map (read :: String -> Double) $ words l1
    let (x2 : y2 : _) = map (read :: String -> Double) $ words l2

    printf "%.4f\n" (sqrt (((x2 - x1) * (x2 - x1)) + ((y2 - y1) * (y2 - y1))))

