-- title: Sequencia IJ 1
-- number of the problem: 1095
-- date: 24/09/20
-- author: ltsdw

myPrinting :: Int -> Int -> IO ()
myPrinting i j = do
    if j < 0
        then do
            return ()
    else do
        putStrLn $ "I=" ++ show i ++ " " ++ "J=" ++ show j
        myPrinting (i + 3) (j - 5)

main :: IO ()
main = myPrinting 1 60

