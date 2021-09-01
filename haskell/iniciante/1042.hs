-- title: Sort Simples
-- number of the problem: 1042
-- date: 22/09/20
-- author: ltsdw

mySort :: [Int] -> [Int]
mySort [] = []
mySort (x:xs) = mySort min ++ [x] ++ mySort max
    where   min = filter (<= x) xs
            max = filter (> x) xs

main :: IO ()
main = do
    l1 <- getLine

    let (n1 : n2 : n3: _) = map (read :: String -> Int) $ words l1

    let sorted_list = mySort [n1, n2, n3]

    print $ head sorted_list
    print (sorted_list !! 1)
    print (sorted_list !! 2)

    putStrLn ""

    print n1
    print n2
    print n3

