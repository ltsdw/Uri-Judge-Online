-- title: LED
-- number of the problem: 1168
-- date: 24/09/20
-- author: ltsdw

numLeds :: String -> Int
numLeds (x:xs)
    | null xs  = if x == '1' then 2 else if x == '2' || x == '5' || x == '3' then 5 else if x == '4' then 4 else if x == '7' then 3 else if x == '8' then 7 else 6
    | x == '1'  = 2 + numLeds xs
    | x == '2' || x == '5' || x == '3'  = 5 + numLeds xs
    | x == '4'                          = 4 + numLeds xs
    | x == '7'                          = 3 + numLeds xs
    | x == '8'                          = 7 + numLeds xs
    | otherwise                         = 6 + numLeds xs

qtdLeds :: Int -> IO ()
qtdLeds n_cases = do
    if n_cases > 0
        then do
            leds <- getLine
            putStrLn (show (numLeds leds) ++ " " ++ "leds")
            qtdLeds (n_cases - 1)
    else do
        return ()

main :: IO ()
main = do
    l1 <- getLine
    let n_cases = read l1 :: Int
    qtdLeds n_cases

