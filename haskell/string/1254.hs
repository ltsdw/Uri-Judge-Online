-- title: 1254
-- number of the problem: Substituição de Tag
-- date: 02/10/20
-- author: ltsdw

import System.IO (isEOF)
import Data.List (stripPrefix)
import Data.Char (toLower)

loop :: IO ()
loop = do
    done <- isEOF
    if done then return ()
    else do
        tag      <- getLine
        new      <- getLine
        original <- getLine
        putStrLn (correctTags original tag new [])
        loop

correctTags :: String -> String -> String -> String -> String
correctTags []     _   _   acc = acc
correctTags (x:xs) tag new acc
    | x == '<'  = correctTags (fst (checkClosedTag xs tag new [])) tag new (acc ++ [x] ++ snd (checkClosedTag xs tag new []))
    | otherwise = correctTags xs tag new (acc ++ [x])

checkClosedTag :: String -> String -> String -> String -> (String, String)
checkClosedTag []     _     _     acc = ("", acc)
checkClosedTag (x:xs) tag new acc
    | x == '>'  = (xs, replace tag new (acc ++ [x]))
    | x == '<'  = (xs, acc ++ [x])
    | otherwise = checkClosedTag xs tag new (acc ++ [x])

replace :: String -> String -> String -> String
replace _   _   []          = []
replace []  _   xs          = xs
replace tag new xs@(y:ys)   = case stripPrefix (map toLower tag) (map toLower xs) of
                                Nothing     -> y    : replace tag new ys
                                _           -> new ++ replace tag new (drop (length tag - 1) ys)

main :: IO ()
main = loop

