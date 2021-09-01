-- title: Esfera
-- number of the problem: 1011
-- date: 20/09/20
-- author: ltsdw

import Text.Printf

myPI :: Double
myPI = 3.14159

volume :: Double -> Double
volume radius = (4.0 / 3.0) * myPI * (radius ** 3)

printVolume :: Double -> IO ()
printVolume volume = do
    printf "VOLUME = %.3f\n" volume


main :: IO ()
main = do
    radius' <- getLine

    let radius = read radius' :: Double

    let vol = volume radius

    printVolume vol

