-- title: Criptotexto
-- number of the problem: 2866
-- date: 01/10/20
-- author: ltsdw

import Data.Char (isLower)

main = do
    n_cases <- getLine
    loop (read n_cases :: Int)

onlyLower :: String -> String
onlyLower = reverse . filter isLower

loop :: Int -> IO ()
loop n_cases
    | n_cases > 0 = do
        str <- getLine
        putStrLn (onlyLower str)
        loop (n_cases-1)
    | otherwise = return ()

