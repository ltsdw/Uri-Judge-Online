-- title: Distância
-- number of the problem: 1016
-- date: 21/09/20
-- author: ltsdw

main :: IO ()
main = do
    y' <- getLine

    let y = read y' :: Int

    putStrLn $ show (y * 2) ++ " minutos"

