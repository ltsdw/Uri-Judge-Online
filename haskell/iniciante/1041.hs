-- title: Coordenadas de um Ponto
-- number of the problem: 1041
-- date: 22/09/20
-- author: ltsdw

import Text.Printf
import Control.Monad

main :: IO ()
main = do
    l1 <- getLine

    let (x : y : _) = map (read :: String -> Double) $ words l1

    if (x == 0) && (y == 0)
        then
            printf "Origem\n"
    else if (x == 0) && (y /= 0)
        then
            printf "Eixo Y\n"
    else if (x /= 0) && (y == 0)
        then
            printf "Eixo X\n"
    else if (x > 0) && (y > 0)
        then
            printf "Q1\n"
    else if (x < 0) && (y > 0)
        then
            printf "Q2\n"
    else if (x < 0) && (y < 0)
        then
            printf "Q3\n"
    else if (x > 0) && (y < 0)
        then
            printf "Q4\n"
    else
        return ()

