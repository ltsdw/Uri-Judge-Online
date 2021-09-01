-- title: 2162
-- number of the problem: Picos e Vales
-- date: 04/10/20
-- author: ltsdw

checkLandscape :: [Int] -> Int -> Int
checkLandscape []           h_pattern           = h_pattern
checkLandscape [v1, v2, v3] h_pattern
    | v2 > v1 && v2 > v3 || v2 < v1 && v2 < v3  = 1
    | otherwise                                 = 0
checkLandscape (v:vs)       h_pattern
    | head vs > v && head vs > (vs !! 1) || head vs < v && head vs < (vs !! 1)  = checkLandscape vs 1
    | otherwise                                                                 = checkLandscape vs 0

main :: IO ()
main = do
    n_landscapes <- getLine
    landscapes' <- getLine
    let landscapes = map (read :: String -> Int) (words landscapes')
    if n_landscapes == "1" then putStrLn "1"
    else if n_landscapes == "2" then 
        if head landscapes /= landscapes !! 1 then putStrLn "1" else putStrLn "0"
    else do
        print $ checkLandscape landscapes 0

