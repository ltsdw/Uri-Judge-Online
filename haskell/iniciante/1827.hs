-- title: Matriz Quadrada IV
-- number of the problem: 1827
-- date: 07/10/20
-- author: ltsdw

import Text.Printf (printf)
import System.IO (isEOF)

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
            c   = length `div` 2
            c'  = length `div` 3
            c'' = length - c'
            arrayJ :: [[Int]] -> Int -> [[Int]] 
            arrayJ xs index_j
                | index_j == length = array xs (index_i+1) length
                | mod length 2 == 1 && index_i == c && index_j == c                 = arrayJ (insertAtList 4 index_i index_j xs) (index_j+1)
                | index_i >= c' && index_i < c'' && index_j >= c' && index_j < c''  = arrayJ (insertAtList 1 index_i index_j xs) (index_j+1)
                | index_i == index_j                                                = arrayJ (insertAtList 2 index_i index_j xs) (index_j+1)
                | index_j == length - 1 - index_i                                   = arrayJ (insertAtList 3 index_i index_j xs) (index_j+1)
                | otherwise                                                         = arrayJ (insertAtList 0 index_i index_j xs) (index_j+1)
 
printArray :: [[Int]] -> IO ()
printArray []           = printf "\n"
printArray (x:xs)       =
    printJ x 
    where
        printJ :: [Int] -> IO ()
        printJ [x]      = do printf "%d\n" x; printArray xs
        printJ (x:xs)   = do printf "%d" x; printJ xs

loop :: IO ()
loop = do
    done <- isEOF
    if done then return ()
    else do
        length' <- getLine
        let length = read length' :: Int
        printArray (array (replicate length []) 0 length)
        loop

