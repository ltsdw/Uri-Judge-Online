-- title: Idade em Dias
-- number of the problem: 1020
-- date: 21/09/20
-- author: ltsdw

main :: IO ()
main = do
    d1' <- getLine

    let d1 = read d1' :: Int

    let a = d1 `div` 365
    let m = rem d1 365 `div` 30
    let d = rem (rem d1 365) 30

    putStrLn    $  show a
                ++ " ano(s)\n"
                ++ show m
                ++ " mes(es)\n"
                ++ show d
                ++ " dia(s)"

