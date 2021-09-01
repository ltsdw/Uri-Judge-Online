-- title: Huaauhahhuahau
-- number of the problem: 2242
-- date: 26/12/20
-- author: ltsdw

resolve :: String -> String
resolve [] = []
resolve (x:xs)
    | x `elem` "aiueo"    = x : resolve xs
    | otherwise         = resolve xs

solve :: String -> String
solve x
    | x == reverse x    = "S"
    | otherwise         = "N"

main :: IO ()
main = do
    l <- getLine
    putStrLn $ solve $ resolve l

