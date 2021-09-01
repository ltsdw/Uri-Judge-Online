import Data.Time (fromGregorian, addDays)

today = fromGregorian 2020 12 21
days  = 365.25

revolutionJupiter :: Double -> IO ()
revolutionJupiter n = do
    let days' = floor ((11.9 * n) * days)
    putStrLn ("Dias terrestres para Jupiter = " ++ show days')
    putStrLn ("Data terrestre para Jupiter: " ++ show (addDays days' today))

revolutionSaturn :: Double -> IO ()
revolutionSaturn n = do
    let days' = floor ((29.6 * n) * days)
    putStrLn ("Dias terrestres para Saturno = " ++ show days')
    putStrLn ("Data terrestre para Saturno: " ++ show (addDays days' today))

main :: IO ()
main = do
    n <- getLine
    revolutionJupiter (read n :: Double)
    revolutionSaturn (read n :: Double)

