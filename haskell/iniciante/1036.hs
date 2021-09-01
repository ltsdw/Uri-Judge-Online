-- title: Fórmula de Bhaskara
-- number of the problem: 1036
-- date: 21/09/20
-- author: ltsdw

import Text.Printf

returnDelta :: (Double, Double, Double) -> Double
returnDelta (a, b, c) =
    let
        delta = (b ** 2) - (4 * a * c)
    in
        delta

returnResult :: (Double, Double, Double, Double) -> (Double, Double)
returnResult (a, b, c, delta) =
    let
        r1 = ( (b * (-1)) + sqrt delta ) / (2 * a)
        r2 = ( (b * (-1)) - sqrt delta ) / (2 * a)
    in
        (r1, r2)

printResult :: (Double, Double) -> IO ()
printResult (r1, r2) = do
    printf "R1 = %.5f\nR2 = %.5f\n" r1 r2

main :: IO ()
main = do
    l1 <- getLine

    let (a : b : c : _) = map (read :: String -> Double) $ words l1

    if a == 0
        then putStrLn "Impossivel calcular"
    else do
        let delta = returnDelta (a, b, c)

        if delta <= 0
            then putStrLn "Impossivel calcular"

        else do
            printResult (returnResult (a, b, c, delta))

