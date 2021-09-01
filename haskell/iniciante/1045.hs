-- title: Tipos de Triângulos
-- number of the problem: 1045
-- date: 22/09/20
-- author: ltsdw

mySort :: [Double] -> [Double]
mySort [] = []
mySort (x:xs) = mySort min ++ [x] ++ mySort max
    where   min = filter (<= x) xs
            max = filter (> x) xs

main :: IO ()
main = do
    l1 <- getLine

    let (a' : b' : c' : _) = map (read :: String -> Double) $ words l1

    let a = mySort [a', b', c'] !! 2
    let b = mySort [a', b', c'] !! 1
    let c = head $ mySort [a', b', c']

    if not (a >= (b + c))
        then do
            if a * a == b * b + c * c
                then putStrLn $ "TRIANGULO RETANGULO"
            else
                return ()
            if a**2 > b * b + c * c
                then putStrLn $ "TRIANGULO OBTUSANGULO"
            else
                return ()
            if a**2 < b * b + c * c
                then putStrLn $ "TRIANGULO ACUTANGULO"
            else
                return ()
            if a == b && c == b 
                then putStrLn $ "TRIANGULO EQUILATERO"
            else
                return ()
            if a == b && a /= c 
                then putStrLn $ "TRIANGULO ISOSCELES"
            else
                return ()
            if c == b && c /= a 
                then putStrLn $ "TRIANGULO ISOSCELES"
            else
                return ()
            if c == a && a /= b
                then putStrLn $ "TRIANGULO ISOSCELES"
            else
                return ()
    else
        putStrLn "NAO FORMA TRIANGULO"

