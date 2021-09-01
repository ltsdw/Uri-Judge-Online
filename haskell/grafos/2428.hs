import Data.List (sort)

resolve :: [Int] -> Bool
resolve area = (area !! 0) * (area !! 3) == (area !! 1) * (area !! 2)

resolve' :: Bool -> String
resolve' True = "S"
resolve' _    = "N"

main :: IO ()
main = do
    l <- getLine
    let (a:b:c:d:_) = map (read :: String -> Int) (words l)
    putStrLn (resolve' (resolve (sort [a,b,c,d])))

