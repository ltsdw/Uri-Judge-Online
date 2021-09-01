-- title: Sequência Espelho
-- number of the problem: 2157
-- date: 29/09/20
-- author: ltsdw

toString :: Show a => [a] -> String
toString = concatMap show

solve :: String -> String
solve nstring = nstring ++ reverse nstring

loopNtimes :: Int -> IO ()
loopNtimes n
    | n > 0 = do
        str <- getLine
        let (start:end:_) = map (read :: String -> Int) (words str)
        putStrLn (solve (toString [start..end]))
        loopNtimes (n-1)
    | otherwise = return ()

main :: IO ()
main = do
    n_cases <- getLine
    loopNtimes (read n_cases :: Int)

