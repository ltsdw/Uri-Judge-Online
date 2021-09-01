-- title: Matriz Quadrada III
-- number of the problem: 1557
-- date: 07/10/20
-- author: ltsdw

import Text.Printf (printf)


main :: IO ()
main = loop

insertAt :: Int -> Int -> [Int] -> [Int]
insertAt element 0      xs       = element : xs
insertAt element index  (x:xs)   = x : insertAt element (index-1) xs

insertAtList :: Int -> Int -> Int -> [[Int]] -> [[Int]]
insertAtList element 0          snd_index (x:xs) = insertAt element snd_index x : xs
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
                | otherwise         = arrayJ (insertAtList (pow (index_i + index_j)) index_i index_j xs) (index_j+1)

printArray :: [[Int]] -> Int -> IO ()
printArray []     _         = printf "\n"
printArray (x:xs) length    =
    printJ x 
    where
        lazy :: [Int]
        lazy = [0,1,1,2,2,3,4,4,5,5,6,7,7,8,8,9]
        printJ :: [Int] -> IO ()
        printJ [x]      = do printf ("%" ++ show (lazy !! length) ++ "d\n") x; printArray xs length
        printJ (x:xs)   = do printf ("%" ++ show (lazy !! length) ++ "d ") x; printJ xs

pow :: Int -> Int
pow x = 2 ^ x

loop :: IO ()
loop = do
    length' <- getLine
    let length = read length' :: Int
    case length of
        0 -> return ()
        _   -> do printArray (array (replicate length []) 0 length) length; loop

