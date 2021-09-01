-- title: Balão++
-- number of the problem: 2840
-- date: 26/12/20
-- author: ltsdw

--import Prelude hiding (pi)

pi' :: Double
pi' = 3.1415

solve :: Double -> Double -> Integer
solve r l = floor (l / (4 / 3 * pi' * (r ^^ 3)))

main :: IO ()
main = do
    line <- getLine
    let (r:l:_) = map (read :: String -> Double) $ words line
    print $ solve r l

