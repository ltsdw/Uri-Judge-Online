-- title: Tempo de Jogo
-- number of the problem: 1046
-- date: 22/09/20
-- author: ltsdw

main :: IO ()
main = do
    l1 <- getLine

    let (start : end : _) = map (read :: String -> Int) $ words l1

    if start == end
        then putStrLn "O JOGO DUROU 24 HORA(S)"
    else if start > end
        then putStrLn $ "O JOGO DUROU " ++ show (24 - start + end) ++ " HORA(S)"
    else
        putStrLn $ "O JOGO DUROU " ++ show (end - start) ++ " HORA(S)"

