-- title: Justificador II
-- number of the problem: 2157
-- date: 29/09/20
-- author: ltsdw

import Text.Printf (printf)
import Data.Ord (comparing)
import Data.List (sortOn)
import Control.Monad (when)

main :: IO ()
main = loop' False

justifyIt :: Int -> [String] -> IO ()
justifyIt n_cases acc
    | n_cases > 0   = do
                        str <- getLine
                        justifyIt (n_cases - 1) (str : acc)

    | otherwise =   printJustified max_length list_of_strings

                    where   list_of_strings     = reverse (removeSpaces acc)
                            max_length          = maximum' list_of_strings

                            printJustified :: Int -> [String] -> IO ()
                            printJustified _            []      = return ()
                            printJustified max_length   (x:xs)  = do
                                printf ("%" ++ show max_length ++ "s\n") x
                                printJustified max_length xs

removeSpaces :: [String] -> [String]
removeSpaces []         = []
removeSpaces (str:strs) = putSpace (words str) : removeSpaces strs
    where putSpace []       = []
          putSpace [x]      = x
          putSpace [x, xs]  = x ++ " " ++ xs
          putSpace (x:xs)   = x ++ " " ++ putSpace xs

maximum' :: [String] -> Int
maxmium' [] = 0
maximum' = length . last . sortOn length

loop' :: Bool -> IO ()
loop' bool = do
    n_cases <- getLine
    let callback = justifyIt (read n_cases :: Int) []

    when (n_cases /= "0") $ do
        if bool then do
            printf "\n"
            callback
            loop' True
        else do
            callback
            loop' True

