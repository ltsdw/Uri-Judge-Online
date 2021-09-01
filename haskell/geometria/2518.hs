-- title: Escada do DINF
-- number of the problem: 2518
-- date: 27/12/20
-- author: ltsdw

import Text.Printf (printf)
import System.IO (isEOF)

solve :: Double -> Double -> Double -> Double -> Double
solve n h c l = fromIntegral (round ((sqrt ((h ** 2) + (c ** 2)) * n) * l)) * 0.0001

main :: IO ()
main = do
    done <- isEOF
    if done then return ()
    else do
        n <- getLine
        line <- getLine
        let (h:c:l:_) = map (read :: String -> Double) $ words line
        printf "%.4f\n" (solve (read n :: Double) h c l)
        main
 
