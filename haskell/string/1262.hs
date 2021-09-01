-- title: 1262
-- number of the problem: Leitura Múltipla
-- date: 01/10/20
-- author: ltsdw

import System.IO (isEOF)

main = loop

countCycles :: Int -> String -> Int -> Int
countCycles _ []       n_r = if n_r > 0 then 1 else 0
countCycles p (x:xs)   n_r
    | x == 'R'  = if n_r +1 == p then 1 + countCycles p xs 0 else countCycles p xs (n_r+1)
    | otherwise = if n_r > 0 then 2 + countCycles p xs 0 else 1 + countCycles p xs 0

loop :: IO ()
loop = do
    done <- isEOF
    if done then return ()
    else do
        cycles      <- getLine
        n_process   <- getLine
        print $ countCycles (read n_process :: Int) cycles 0
        loop

