-- title: Sequências Crescentes
-- number of the problem: 1146
-- date: 28/09/20
-- author: ltsdw

import Control.Monad (when)

list :: [Int]
list = [1..]

main :: IO ()
main = do
    number <- getLine
    when (number /= "0") $ do
        putStrLn (myPrint (take (read number :: Int) list))
        main

myPrint :: [Int] -> String
myPrint []          = []
myPrint [x]         = show x
myPrint [x, xs]     = show x ++ " " ++ show xs
myPrint (x:xs)      = show x ++ " " ++ myPrint xs

