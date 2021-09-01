-- title: HameKameKa
-- number of the problem: 2591
-- date: 01/10/20
-- author: ltsdw

main :: IO ()
main = do
    n_cases <- getLine
    loop (read n_cases :: Int)


splitAt' :: Eq a => a -> [a] -> ([a], [a])
splitAt' elem = break (== elem)

{-count :: (Foldable t, Eq a) => a -> t a -> Int
count a = foldr (\x acc -> if (x == a) then acc+1 else acc) 0-}

count :: Eq a => a -> [a] -> Int
count _ [] = 0
count elem (x:xs)
    | elem == x = 1 + count elem xs
    | otherwise = count elem xs

ka :: (String, String) -> String
ka hamekame = "k" ++ n_as
    where n_as = replicate (count 'a' (snd hamekame) * count 'a' (fst hamekame)) 'a'

loop :: Int -> IO ()
loop n_cases
    | n_cases > 0 = do
        hamekame' <- getLine
        putStrLn (ka (splitAt' 'k' hamekame'))
        loop (n_cases-1)
    | otherwise = return ()

