-- title: Matriz Quadrada II
-- number of the problem: 1478
-- date: 06/10/20
-- author: ltsdw

import Text.Printf (printf)

main :: IO ()
main = loop

insertAtList :: Int -> Int -> Int -> [[Int]] -> [[Int]]
insertAtList element 0 snd_index (x:xs) =
    insertAt element snd_index x : xs
    where
        insertAt :: Int -> Int -> [Int] -> [Int]
        insertAt element 0      xs       = element : xs
        insertAt element index  (x:xs)   = x : insertAt element (index-1) xs
insertAtList element fst_index  snd_index (x:xs) = x : insertAtList element (fst_index-1) snd_index xs

array :: [[Int]] -> Int -> Int -> [[Int]]
array xs index_i length
    | index_i == length = xs
    | otherwise         =
        arrayJ xs 0
        where
            arrayJ :: [[Int]] -> Int -> [[Int]] 
            arrayJ xs index_j
                | index_j == length = array xs (index_i+1) length
                | otherwise         =
                    case index_i of
                        0 -> arrayJ (insertAtList (index_i + index_j + 1) index_i index_j xs) (index_j+1)
                        _ -> if index_i + 1 - index_j > 0 then
                                arrayJ (insertAtList (index_i + 1 - index_j) index_i index_j xs) (index_j+1)
                             else arrayJ (insertAtList ((xs !! (index_i - 1)) !! (index_j - 1)) index_i index_j xs) (index_j+1)

printArray :: [[Int]] -> IO ()
printArray []           = printf "\n"
printArray (x:xs)       =
    printJ x 
    where
        printJ :: [Int] -> IO ()
        printJ [x]      = do printf "%3d\n" x; printArray xs
        printJ (x:xs)   = do printf "%3d " x; printJ xs

loop :: IO ()
loop = do
    length' <- getLine
    let length = read length' :: Int
    case length of
        0   -> return ()
        _   -> do printArray (array (replicate length []) 0 length); loop

