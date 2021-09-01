-- title: Concurso de Contos
-- number of the problem: 1222
-- date: 26/12/20
-- author: ltsdw

import System.IO (isEOF)

resolve :: [String] -> Int -> Int -> Int -> Int -> Int
resolve []      l _ _  al = ceiling ((fromIntegral al :: Double) / (fromIntegral l :: Double))
resolve (x:xs)  l c ac al
    | length x + ac <= c = resolve xs l c (length x + ac + 1) al
    | otherwise = resolve xs l c (length x + 1) (al+1)

main :: IO ()
main = do
    done <- isEOF
    if done then return ()
    else do
        line <- getLine
        let (_:l:c:_) = map (read :: String -> Int) $ words line
        str <- getLine
        print $ resolve (words str) l c 0 1
        main

