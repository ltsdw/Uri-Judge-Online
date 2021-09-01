-- title: Criptografia
-- number of the problem: 1024
-- date: 25/12/20
-- author: ltsdw

import Data.Char (chr, isLetter, isAscii, isLower, isUpper, ord)

main :: IO ()
main = do
    l <- getLine
    loop (read l :: Int)

loop :: Int -> IO ()
loop cases
    | cases > 0 = do
        l <- getLine
        putStrLn $ solve l
        loop (cases-1)
    | otherwise = return ()

cipher :: Char -> Char
cipher c
    | isLetter c = chr (ord c + 3)
    | otherwise      = c

cipher' :: String -> String
cipher' = map cipher

cipher'' :: Char -> Char
cipher'' c = chr (ord c - 1)

solve :: String -> String
solve str = let str' = reverse (cipher' str)
            in lastcipher str'
            where
                lastcipher str'' =  let (first_str, second_str) = splitAt (div (length str'')  2) str''
                                    in (first_str ++ map cipher'' second_str)

