-- title: O Maior
-- number of the problem: 1013
-- date: 21/09/20
-- author: ltsdw

myMax :: (Int, Int, Int) -> [Int]
myMax (a, b, c) = do
    let max_ab  = ( a + b + abs (a - b)) `div` 2
    let max_abc = ( max_ab + c + abs (max_ab - c)) `div` 2

    return max_abc :: [Int]

main :: IO ()
main = do
    l1 <- getLine

    let (a : b : c : _ ) = map (read :: String -> Int) $ words l1

    putStrLn $ show ( head $ myMax (a, b, c) ) ++ " eh o maior"

