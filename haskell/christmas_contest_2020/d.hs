import Data.List (sort)

{-quicksort :: [Int] -> [Int]
quicksort []     = []
quicksort (p:xs) = (quicksort lesser) ++ [p] ++ (quicksort greater)
    where
        lesser  = filter (< p) xs
        greater = filter (>= p) xs-}

resolve :: Int -> Int -> [Int] -> Int -> Int
resolve _ _ []  s = s
resolve _ _ [a] s = s+1
resolve p index xs s
    | index == 0 = resolve p (index+1) xs 1
    | index == (length xs - 1) = if xs !! (index-1) == xs !! index then s+p else s+p+1
    | otherwise =   if xs !! (index-1) == xs !! index then
                        resolve p (index+1) xs (s+p)
                    else
                        resolve (p+1) (index+1) xs (s+p+1)

main :: IO ()
main = do
    _ <- getLine
    lst <- getLine
    print (resolve 1 0 (sort (map (read :: String -> Int) (words lst))) 0)

