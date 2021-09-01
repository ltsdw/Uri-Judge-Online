-- title: Teste de Seleção 1
-- number of the problem: 1035
-- date: 21/09/20
-- author: ltsdw

main :: IO ()
main = do
    l1 <- getLine

    let (a : b : c : d : _) = map (read :: String -> Int) $ words l1

    if (b > c) && (d > a) && ((c + d) > (a + b)) && (c > 0) && (d > 0) && even a
        then
            putStrLn "Valores aceitos"
    else
        putStrLn "Valores nao aceitos"

