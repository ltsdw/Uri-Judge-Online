-- title: Feijão
-- number of the problem: 2791
-- date: 01/09/21
-- author: ltsdw

resolve :: [Int] -> Int -> Int
resolve (x:xs) idx
    | x == 1 = idx
    | otherwise = resolve xs (idx+1)

main :: IO ()
main = do
    l1 <- getLine

    let xs = map (read :: String -> Int) $ words l1

    print $ resolve xs 1
