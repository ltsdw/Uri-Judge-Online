-- title: Tempo de Jogo com Minutos
-- number of the problem: 1047
-- date: 22/09/20
-- author: ltsdw

main :: IO ()
main = do
    l1 <- getLine

    let (init_hours : init_minutes : final_hours : final_minutes : _) = map (read :: String -> Int) $ words l1

    let r_hours     = final_hours - init_hours
    let r_h_j       = r_hours
    let r_minutes   = final_minutes - init_minutes
    let r_m_j       = r_minutes

    let r_hours     = if r_h_j < 0 then r_h_j + 24 else r_h_j
    let r_minutes   = if r_m_j < 0 then r_m_j + 60 else r_m_j
    let r_h_j       = r_hours
    let r_hours     = if r_m_j < 0 then r_h_j - 1 else r_h_j
    let r_h_j       = r_hours
    let r_hours     = if r_h_j < 0 then r_h_j + 24 else r_h_j

    if init_hours == final_hours && init_minutes == final_minutes
        then putStrLn "O JOGO DUROU 24 HORA(S) E 0 MINUTO(S)"
    else
        putStrLn $ "O JOGO DUROU " ++ show r_hours ++ " HORA(S) E " ++ show r_minutes ++ " MINUTO(S)"

