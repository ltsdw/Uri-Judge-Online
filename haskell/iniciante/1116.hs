-- title: Dividindo X por Y
-- number of the problem: 1116
-- date: 07/10/20
-- author: ltsdw

main :: IO ()
main = do
    n_cases <- getLine
    printDivision (read n_cases :: Int)

printDivision :: Int -> IO ()
printDivision n_cases
    | n_cases == 0 = return ()
    | otherwise = do
        line <- getLine
        let (x : y : _) = map (read :: String -> Double) (words line)
        printDivisionHelper x y
        printDivision (n_cases - 1)
        where
            printDivisionHelper :: Double -> Double -> IO ()
            printDivisionHelper _ 0 = putStrLn "divisao impossivel"
            printDivisionHelper x y = print $ x / y
