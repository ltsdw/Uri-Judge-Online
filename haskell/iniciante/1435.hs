-- title: Matriz Quadrada I
-- number of the problem: 1435
-- date: 04/10/20
-- author: ltsdw

import Text.Printf (printf)

main :: IO ()
main = loop

printI :: Int -> Int -> IO ()
printI i length
    | i <= length = printJ 1 length 1
    | otherwise = printf "\n"
                    where   printJ :: Int -> Int -> Int -> IO ()
                            printJ j length c = case j <= length of 
                                    True    | i < c                 -> printJ j length i 
                                            | length - j + 1 < c    -> printJ j length (length - j + 1)
                                            | length - i + 1 < c    -> printJ j length (length - i + 1)
                                            | j < length            -> do printf "%3d " c; printJ (j+1) length (j+1)
                                            | otherwise             -> do printf "%3d\n" c; printI (i+1) length

loop :: IO ()
loop = do
    length <- getLine
    case length of
        "0" -> return ()
        _   -> do printI 1 (read length :: Int); loop

