-- title: Conversão de Tempo
-- number of the problem: 1019
-- date: 21/09/20
-- author: ltsdw

main :: IO ()
main = do
    s' <- getLine

    let s = read s' :: Int
    
    let m   = if s >= 60 then s `div`   60  else 0
    let sec = if s >= 60 then rem s     60  else s
    let h   = if m >= 60 then m `div`   60  else 0
    let min = if m >= 60 then rem m     60  else m

    putStrLn $ show h ++ ":" ++ show min ++ ":" ++ show sec

