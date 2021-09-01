-- title: Avance as Letras
-- number of the problem: 1607
-- date: 26/12/20
-- author: ltsdw

import Data.Char (ord)
import Control.Monad (replicateM)

resolve :: String -> String -> Int
resolve []     _        = 0
resolve (x:xs) (y:ys)
    | ord x - ord y > 0 = (26 - (ord x - ord y)) + resolve xs ys
    | otherwise             = abs (ord x - ord y) + resolve xs ys

solve :: [[String]] -> IO ()
solve []            = return ()
solve ([x, y]:xs)   = do print (resolve x y); solve xs

main :: IO ()
main = do
    l <- getLine
    xs <- replicateM (read l :: Int) getLine
    solve $ map words xs

