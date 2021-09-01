resolve :: Int -> Int -> Int
resolve a b = (b `div` 2) - a

message :: Int -> IO ()
message a
    | a > 0 = putStrLn ("Faltam " ++ show a ++ " bolinha(s)")
    | otherwise = putStrLn "Amelia tem todas bolinhas!"

main :: IO ()
main = do
    a <- getLine
    b <- getLine
    message (resolve (read a :: Int) (read b :: Int))
