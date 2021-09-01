-- title: Cédulas
-- number of the problem: 1018
-- date: 21/09/20
-- author: ltsdw

main :: IO ()
main = do
    v' <- getLine

    let v = read v' :: Int

    print v

    putStrLn $ show (v `div` 100)                                                       ++ " nota(s) de R$ 100,00"
    putStrLn $ show ( rem v 100 `div` 50)                                               ++ " nota(s) de R$ 50,00"
    putStrLn $ show ( rem (rem v 100) 50 `div` 20)                                      ++ " nota(s) de R$ 20,00"
    putStrLn $ show ( rem (rem (rem v 100) 50) 20 `div` 10)                             ++ " nota(s) de R$ 10,00"
    putStrLn $ show ( rem (rem (rem (rem v 100) 50) 20 ) 10 `div` 5)                    ++ " nota(s) de R$ 5,00"
    putStrLn $ show ( rem (rem (rem (rem (rem v 100) 50) 20) 10) 5 `div` 2)             ++ " nota(s) de R$ 2,00"
    putStrLn $ show ( rem (rem (rem (rem (rem (rem v 100) 50) 20) 10) 5) 2 `div` 1 )    ++ " nota(s) de R$ 1,00"

