-- title: Árvore de Natal
-- number of the problem: 1768
-- date: 01/10/20
-- author: ltsdw

import System.IO (isEOF)
import Text.Printf (printf)
import Control.Monad (unless)

main :: IO ()
main = loop

loop :: IO ()
loop = do
    done <- isEOF
    unless done $ do
        base <- getLine
        let base' = read base :: Int
        tree base' 1
        printf "\n"
        loop

tree :: Int -> Int -> IO ()
tree base  acc = do
    if acc <= base then do 
        printf (replicate ((base - acc) `div` 2) ' ' ++ "%s\n") (replicate acc '*')
        tree base (acc+2)
    else do
        printf (replicate (base  `div` 2   ) ' ' ++ "%s\n") "*"
        printf (replicate ((base `div` 2)-1) ' ' ++ "%s\n") "***"

