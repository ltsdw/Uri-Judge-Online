-- title: Escolha Difícil
-- number of the problem: 2702
-- date: 25/09/20
-- author: ltsdw

diff :: [Int] -> [Int] -> Int
diff _ []           = 0
diff [] _           = 0
diff (x:xs) (y:ys)
    | (x - y) < 0 = (y - x) + diff xs ys
    | otherwise     = diff xs ys

main :: IO ()
main = do
    l1 <- getLine
    l2 <- getLine
 
    print $ diff (map (read :: String -> Int) $ words l1) (map (read :: String -> Int) $ words l2)

