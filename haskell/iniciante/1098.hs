-- title: Sequencia IJ 4
-- number of the problem: 1098
-- date: 24/09/20
-- author: ltsdw

import Text.Printf (printf)

roundString :: String -> String
roundString (x:'.':'0':xs)  = x : roundString xs
roundString (x:xs)          = x : roundString xs
roundString ""              = ""

myPrint :: Double -> Double -> IO ()
myPrint i j = do
    if i >= 2
        then do
            return ()
    else do

        let temp_i = roundString (printf "%.1f" i :: String)
        let temp_j = roundString (printf "%.1f" (j + i) :: String)
        let temp_j2 = roundString (printf "%.1f" (j + 1 + i) :: String)
        let temp_j3 = roundString (printf "%.1f" (j + 2 + i) :: String)

        putStrLn $ "I=" ++ temp_i ++ " " ++ "J=" ++ temp_j
        putStrLn $ "I=" ++ temp_i ++ " " ++ "J=" ++ temp_j2
        putStrLn $ "I=" ++ temp_i ++ " " ++ "J=" ++ temp_j3

        myPrint (i + 0.2) 1

main :: IO ()
main = myPrint 0 1

