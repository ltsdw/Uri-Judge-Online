-- title: Idade em Dias
-- number of the problem: 1020
-- date: 21/09/20
-- author: ltsdw

import Data.Fixed

main :: IO ()
main = do
    t <- getLine

    let total = (read t :: Double) + 0.001

    let cem         = floor ( total / 100.0 )
    let cinquenta   = floor ( mod' total 100.0 / 50.0 )
    let vinte       = floor ( mod' (mod' total 100.0) 50.0 / 20.0 )
    let dez         = floor ( mod' (mod' total 50.0) 20.0 / 10.0 )
    let cinco       = floor ( mod' total 10.0 / 5.0 )
    let dois        = floor ( mod' total 5.0 / 2.0 )
    let um          = floor ( mod' (mod' (mod' (mod' (mod' (mod' total 100.0) 50.0) 20.0) 10.0) 5.0) 2.0 / 1.0 )
    let cinqcents   = floor ( mod' total 1.0 / 0.5 )
    let vintcents   = floor ( mod' total 0.5 / 0.25 )
    let dezcents    = floor ( mod'(mod'(mod'(mod'(mod'(mod'(mod'(mod'(mod' total 100.0) 50.0) 20.0) 10.0) 5.0) 2.0) 1.0) 0.5) 0.25 / 0.1 )
    let cincents    = floor ( mod'(mod'(mod'(mod'(mod'(mod'(mod'(mod'(mod'(mod' total 100.0) 50.0) 20.0) 10.0) 5.0) 2.0) 1.0) 0.5) 0.25) 0.1 / 0.05 )
    let umcents     = floor ( mod'(mod'(mod'(mod'(mod'(mod'(mod'(mod'(mod'(mod'(mod' total 100.0) 50.0) 20.0) 10.0) 5.0) 2.0) 1.0) 0.5) 0.25) 0.1) 0.05 / 0.01 )

    putStrLn "NOTAS:"
    putStrLn $ show cem         ++ " nota(s) de R$ 100.00"
    putStrLn $ show cinquenta   ++ " nota(s) de R$ 50.00"
    putStrLn $ show vinte       ++ " nota(s) de R$ 20.00"
    putStrLn $ show dez         ++ " nota(s) de R$ 10.00"
    putStrLn $ show cinco       ++ " nota(s) de R$ 5.00"
    putStrLn $ show dois        ++ " nota(s) de R$ 2.00"
    putStrLn "MOEDAS:"
    putStrLn $ show um          ++ " moeda(s) de R$ 1.00"
    putStrLn $ show cinqcents   ++ " moeda(s) de R$ 0.50"
    putStrLn $ show vintcents   ++ " moeda(s) de R$ 0.25"
    putStrLn $ show dezcents    ++ " moeda(s) de R$ 0.10"
    putStrLn $ show cincents    ++ " moeda(s) de R$ 0.05"
    putStrLn $ show umcents     ++ " moeda(s) de R$ 0.01"

