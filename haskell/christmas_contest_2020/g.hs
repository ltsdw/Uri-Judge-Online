import Data.Function (on)
import Text.Printf (printf)

factorial :: Integer -> Integer
factorial number = product [1..number]

resolve :: Integer -> Integer -> Integer -> Double
resolve n x p = (fromIntegral(factorial n) / (fromIntegral(factorial x) * fromIntegral(factorial (n - x)))) * ((fromIntegral p/100) ^ x) * ((1 - (fromIntegral p/100)) ^ (n - x)) * 100

pResult :: Int -> Int -> IO ()
pResult c cases
    | c <= cases = do
        l <- getLine
        let (n:p:x:_) = map (read :: String -> Integer) (words l)
        printf ("A chance de Basy acertar o numero no dia %d eh %.2f" ++ "%s" ++ "\n") c (resolve n p x) "%"
        pResult (c+1) cases
    | otherwise = return ()

main :: IO ()
main = do
    cases <- getLine
    pResult 1 (read cases :: Int)

