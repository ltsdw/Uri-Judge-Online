-- title: Sentença Dançante
-- number of the problem: 1234
-- date: 26/09/20
-- author: ltsdw

import Data.Char
import System.IO (isEOF)

main :: IO ()
main = whileEOF

stringDancante :: [Char] -> Bool -> [Char]
stringDancante [] _ = []
stringDancante (x:xs) toggleUpper
    | isLower x && toggleUpper      && x /= ' ' = toUpper x   : stringDancante xs False
    | isLower x && not toggleUpper  && x /= ' ' = x           : stringDancante xs True
    | isUpper x && not toggleUpper  && x /= ' ' = toLower x   : stringDancante xs True
    | isUpper x && toggleUpper      && x /= ' ' = x           : stringDancante xs False
    | x == ' '                                  = x           : stringDancante xs toggleUpper
    | otherwise                                 = x           : stringDancante xs toggleUpper

whileEOF :: IO ()
whileEOF = do
    done <- isEOF

    if done
        then do return ()
    else do
        string <- getLine
        putStrLn (stringDancante string True)
        whileEOF

