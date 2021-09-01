-- title: Lanche
-- number of the problem: 1038
-- date: 22/09/20
-- author: ltsdw

import Text.Printf

total2Pay :: Int -> Int -> IO ()
total2Pay cod qtd =
    case cod of
    1 -> printf "Total: R$ %.2f\n" ( (fromIntegral qtd * 4.00) :: Double )
    2 -> printf "Total: R$ %.2f\n" ( (fromIntegral qtd * 4.50) :: Double )
    3 -> printf "Total: R$ %.2f\n" ( (fromIntegral qtd * 5.00) :: Double )
    4 -> printf "Total: R$ %.2f\n" ( (fromIntegral qtd * 2.00) :: Double )
    5 -> printf "Total: R$ %.2f\n" ( (fromIntegral qtd * 1.50) :: Double )

main :: IO ()
main = do
    l1 <- getLine

    let (cod : qtd : _) = map (read :: String -> Int) $ words l1

    total2Pay cod qtd

