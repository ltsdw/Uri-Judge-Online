-- title: Matring
-- number of the problem: 1803
-- date: 25/12/20
-- author: ltsdw

import Data.Char (chr)

transpose :: [String] -> [String]
transpose  []          = []
transpose  ([] : xs)   = transpose xs
transpose  xs          = map head xs : transpose (map tail xs)

receiver :: [String] -> [Int]
receiver xs = map (read :: String -> Int) (transpose xs)

resolve :: [Int] -> String
resolve xs =
    let (f, l, m) = (head xs, last xs, init (tail xs))
    in solve f l m
    where
        solve _ _ []        = []
        solve f l (m':ms')  = chr (mod (f * m' + l) 257) : solve f l ms'

main :: IO ()
main = do
    l1 <- getLine
    l2 <- getLine
    l3 <- getLine
    l4 <- getLine

    putStrLn $ resolve $ receiver [l1, l2, l3, l4]

