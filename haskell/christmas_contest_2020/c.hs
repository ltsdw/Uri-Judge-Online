import Data.Function (on)
import Data.List (sortBy, transpose)

splitEvery :: Int -> [a] -> [[a]]
splitEvery _ [] = []
splitEvery n xs = as : splitEvery n bs 
    where (as,bs) = splitAt n xs

firstSort :: [(String, Int)] -> [(String, Int)]
firstSort = sortBy (compare `on` fst)

secondSort :: [(String, Int)] -> [(String, Int)]
secondSort = sortBy (compare `on` snd)

resolve :: [[(String, Int)]] -> Int -> Int -> IO ()
resolve []      _       _    = return ()
resolve (x:xs)  length  time
    | time <= length = do
        putStrLn ("Time " ++ show time)
        resolve' x
    | otherwise = return () --do putStrLn ("Time " ++ (show time)); resolve'' x
    where   resolve' []         = do putStrLn ""; resolve xs length (time+1)
            resolve' (x':xs')   = do putStrLn (fst x' ++ " " ++ show (snd x')); resolve' xs'

            resolve'' [] = return ()
            resolve'' (x'':xs'') = do putStrLn (fst x'' ++ " " ++ show (snd x'')); resolve'' xs''

ss :: Int -> [(String, Int)] -> IO ()
ss cases acc
    | cases > 0 = do
        l <- getLine
        let (a:b:_) = words l
        ss (cases-1) ((a, read b :: Int) : acc)
    | otherwise = do
        let lst = transpose (splitEvery (length acc `div` 3) (reverse (secondSort (reverse (firstSort acc)))))
        resolve lst (length lst) 1

main :: IO ()
main = do
    cases <- getLine
    ss (read cases :: Int) []

