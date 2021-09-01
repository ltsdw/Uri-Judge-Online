-- title: Múltiplos
-- number of the problem: 1044
-- date: 22/09/20
-- author: ltsdw

main :: IO ()
main = do
    l1 <- getLine

    let (a' : b' : _) = map (read :: String -> Int) $ words l1

    let max = if a' > b' then a' else b'
    let min = if a' < b' then a' else b'

    if rem max min == 0
        then
            putStrLn "Sao Multiplos"
    else
        putStrLn "Nao sao Multiplos"

