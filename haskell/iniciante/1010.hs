-- title: Cálculo Simples
-- number of the problem: 1010
-- date: 20/09/20
-- author: ltsdw

import Text.Printf

total2Pay :: (Double, Double , Double, Double) -> Double
total2Pay (qtd1, price1, qtd2, price2) = (qtd1 * price1) + (qtd2 * price2) 

printTotal :: Double -> IO ()
printTotal total = do
    printf "VALOR A PAGAR: R$ %.2f\n" total

main :: IO ()
main = do
    l1 <- getLine
    l2 <- getLine

    let ( _ : qtd1 : price1: _ ) = map (read :: String -> Double) $ words l1
    let ( _ : qtd2 : price2: _ ) = map (read :: String -> Double) $ words l2

    let total = total2Pay (qtd1, price1, qtd2, price2)

    printTotal total

