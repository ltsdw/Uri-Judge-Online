-- title: Área
-- number of the problem: 1012
-- date: 21/09/20
-- author: ltsdw

import Text.Printf

myPI :: Double
myPI = 3.14159

area :: (Double, Double, Double) -> (Double, Double, Double, Double, Double)
area (a, b, c) = let 
    area_triangle   = (a * c) / 2
    area_circle     = myPI * (c * c)
    area_trapezium  = (a + b) * c / 2
    area_square     = b * b
    area_rectangle  = a * b

    in (area_triangle, area_circle, area_trapezium, area_square, area_rectangle)

printArea :: (Double, Double, Double, Double, Double) -> IO ()
printArea (area_triangle, area_circle, area_trapezium, area_square, area_rectangle) = do
    printf "TRIANGULO: %.3f\n"  area_triangle
    printf "CIRCULO: %.3f\n"    area_circle
    printf "TRAPEZIO: %.3f\n"   area_trapezium
    printf "QUADRADO: %.3f\n"   area_square
    printf "RETANGULO: %.3f\n"  area_rectangle

main :: IO ()
main = do
    l1 <- getLine

    let (a : b : c : _ ) = map (read :: String -> Double) $ words l1

    let var_area = area (a, b, c)

    printArea var_area

